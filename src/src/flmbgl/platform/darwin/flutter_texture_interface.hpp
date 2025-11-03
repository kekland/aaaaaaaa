#pragma once

#include <Metal/Metal.hpp>
#include <cstdint>
#include <iostream>

#include "../../flutter_texture_interface.hpp"
#include "../../mtl/renderer_backend.hpp"

typedef void* texture_registry_t;
typedef void* flmbgl_flutter_texture_t;
typedef void* flmbgl_metal_flutter_texture_t;

// FlMbglDarwinPluginGlobals.swift
extern "C" texture_registry_t FlMbglDarwinPluginGlobals_getTextureRegistry();

// FlutterTextureRegistryProxy.swift
extern "C" int64_t FlutterTextureRegistryProxy_registerTexture(texture_registry_t registry, void* texture);
extern "C" void FlutterTextureRegistryProxy_textureFrameAvailable(texture_registry_t registry, int64_t textureId);
extern "C" void FlutterTextureRegistryProxy_unregisterTexture(texture_registry_t registry, int64_t textureId);

// FlMbglMetalFlutterTexture.swift
extern "C" flmbgl_metal_flutter_texture_t FlMbglMetalFlutterTexture_create();
extern "C" void FlMbglMetalFlutterTexture_destroy(flmbgl_metal_flutter_texture_t texture);
extern "C" void FlMbglMetalFlutterTexture_updateBuffer(flmbgl_metal_flutter_texture_t texture,
                                                       MTL::Texture* mtlTexture);

namespace flmbgl {
namespace darwin {

class FlutterTextureInterface : public flmbgl::FlutterTextureInterface {
 public:
  FlutterTextureInterface() {
    textureRegistry = FlMbglDarwinPluginGlobals_getTextureRegistry();
    flutterTexture = FlMbglMetalFlutterTexture_create();
    textureId = FlutterTextureRegistryProxy_registerTexture(textureRegistry, flutterTexture);
  }
  ~FlutterTextureInterface() override {
    FlutterTextureRegistryProxy_unregisterTexture(textureRegistry, textureId);
    FlMbglMetalFlutterTexture_destroy(flutterTexture);
  }

  int64_t getTextureId() const override { return textureId; }

  void update(flmbgl::RendererBackend& backend) override {
    auto mtlBackend = static_cast<flmbgl::mtl::RendererBackend*>(&backend);
    auto mtlTexture = mtlBackend->getMTLTexture();
    if (mtlTexture) {
      FlMbglMetalFlutterTexture_updateBuffer(flutterTexture, mtlTexture);
      FlutterTextureRegistryProxy_textureFrameAvailable(textureRegistry, textureId);
    }
  }

 private:
  int64_t textureId;
  texture_registry_t textureRegistry;
  flmbgl_metal_flutter_texture_t flutterTexture;
};
}  // namespace macos
}  // namespace flmbgl
