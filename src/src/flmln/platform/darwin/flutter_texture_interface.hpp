#pragma once

#include <Metal/Metal.hpp>
#include <cstdint>
#include <iostream>

#include "../../flutter_texture_interface.hpp"
#include "../../mtl/renderer_backend.hpp"

typedef void* texture_registry_t;
typedef void* flmln_flutter_texture_t;
typedef void* flmln_metal_flutter_texture_t;

// FlMlnDarwinPluginGlobals.swift
extern "C" texture_registry_t FlMlnDarwinPluginGlobals_getTextureRegistry();

// FlutterTextureRegistryProxy.swift
extern "C" int64_t FlutterTextureRegistryProxy_registerTexture(texture_registry_t registry, void* texture);
extern "C" void FlutterTextureRegistryProxy_textureFrameAvailable(texture_registry_t registry, int64_t textureId);
extern "C" void FlutterTextureRegistryProxy_unregisterTexture(texture_registry_t registry, int64_t textureId);

// FlMlnMetalFlutterTexture.swift
extern "C" flmln_metal_flutter_texture_t FlMlnMetalFlutterTexture_create();
extern "C" void FlMlnMetalFlutterTexture_destroy(flmln_metal_flutter_texture_t texture);
extern "C" void FlMlnMetalFlutterTexture_updateBuffer(flmln_metal_flutter_texture_t texture,
                                                       MTL::Texture* mtlTexture);

namespace flmln {
namespace darwin {

class FlutterTextureInterface : public flmln::FlutterTextureInterface {
 public:
  FlutterTextureInterface() {
    textureRegistry = FlMlnDarwinPluginGlobals_getTextureRegistry();
    flutterTexture = FlMlnMetalFlutterTexture_create();
    textureId = FlutterTextureRegistryProxy_registerTexture(textureRegistry, flutterTexture);
  }
  ~FlutterTextureInterface() override {
    FlutterTextureRegistryProxy_unregisterTexture(textureRegistry, textureId);
    FlMlnMetalFlutterTexture_destroy(flutterTexture);
  }

  int64_t getTextureId() const override { return textureId; }

  void update(flmln::RendererBackend& backend) override {
    auto mtlBackend = static_cast<flmln::mtl::RendererBackend*>(&backend);
    auto mtlTexture = mtlBackend->getMTLTexture();
    if (mtlTexture) {
      FlMlnMetalFlutterTexture_updateBuffer(flutterTexture, mtlTexture);
      FlutterTextureRegistryProxy_textureFrameAvailable(textureRegistry, textureId);
    }
  }

 private:
  int64_t textureId;
  texture_registry_t textureRegistry;
  flmln_metal_flutter_texture_t flutterTexture;
};
}  // namespace macos
}  // namespace flmln
