#pragma once

#include <cstddef>
#include "../flmbgl_texture_interface.hpp"

typedef void* texture_registry_t;
typedef void* flmbgl_flutter_texture_t;

// FlMbglDarwinPluginGlobals.swift
extern "C" texture_registry_t FlMbglDarwinPluginGlobals_getTextureRegistry();

// FlutterTextureRegistryProxy.swift
extern "C" int64_t FlutterTextureRegistryProxy_registerTexture(texture_registry_t registry, void* texture);
extern "C" void FlutterTextureRegistryProxy_textureFrameAvailable(texture_registry_t registry, int64_t textureId);
extern "C" void FlutterTextureRegistryProxy_unregisterTexture(texture_registry_t registry, int64_t textureId);

// FlMbglFlutterTexture.swift
extern "C" flmbgl_flutter_texture_t FlMbglFlutterTexture_create();
extern "C" void FlMbglFlutterTexture_destroy(flmbgl_flutter_texture_t texture);
extern "C" void FlMbglFlutterTexture_createBuffer(flmbgl_flutter_texture_t texture, uint32_t width, uint32_t height,
                                                  uint32_t depth);
extern "C" void FlMbglFlutterTexture_setBufferData(flmbgl_flutter_texture_t texture, const void* data, size_t length);

namespace flmbgl {
class FlMbglMacosTextureInterface : public flmbgl::FlMbglTextureInterface {
 public:
  FlMbglMacosTextureInterface(mbgl::Size size_) : flmbgl::FlMbglTextureInterface(size_) { initialize(); }
  ~FlMbglMacosTextureInterface() override {
    FlutterTextureRegistryProxy_unregisterTexture(textureRegistry, textureId);
    FlMbglFlutterTexture_destroy(flutterTexture);
  }

  int64_t getTextureId() const override { return textureId; }

  void initialize() override {
    textureRegistry = FlMbglDarwinPluginGlobals_getTextureRegistry();
    flutterTexture = FlMbglFlutterTexture_create();
    textureId = FlutterTextureRegistryProxy_registerTexture(textureRegistry, flutterTexture);

    auto size = this->getSize();
    FlMbglFlutterTexture_createBuffer(flutterTexture, size.width, size.height, 4);
  }

  void update(const void* data, size_t length) override {
    auto size = this->getSize();
    FlMbglFlutterTexture_createBuffer(flutterTexture, size.width, size.height, 4);
    FlMbglFlutterTexture_setBufferData(flutterTexture, data, length);
    FlutterTextureRegistryProxy_textureFrameAvailable(textureRegistry, textureId);
  }

  void onSizeChanged() override {
    auto size = this->getSize();
    FlMbglFlutterTexture_createBuffer(flutterTexture, size.width, size.height, 4);
  }

 private:
  int64_t textureId;
  texture_registry_t textureRegistry;
  flmbgl_flutter_texture_t flutterTexture;
};
}  // namespace flmbgl
