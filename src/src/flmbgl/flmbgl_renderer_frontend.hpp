#pragma once

#include <mbgl/gfx/backend_scope.hpp>
#include <mbgl/gfx/headless_backend.hpp>
#include <mbgl/gfx/headless_frontend.hpp>
#include <mbgl/map/map.hpp>
#include <mbgl/renderer/renderer.hpp>
#include <mbgl/renderer/renderer_frontend.hpp>

#include "flmbgl_texture_interface.hpp"

namespace flmbgl {
class FlMbglRendererFrontend : public mbgl::RendererFrontend {
 public:
  FlMbglRendererFrontend(mbgl::Size size_, float pixelRatio_, const std::optional<std::string>& localFontFamily)
      : size(size_), pixelRatio(pixelRatio_) {
    auto scaledSize = mbgl::Size{
        static_cast<uint32_t>(size_.width * pixelRatio_),
        static_cast<uint32_t>(size_.height * pixelRatio_),
    };

    backend = mbgl::gfx::HeadlessBackend::Create(scaledSize, mbgl::gfx::HeadlessBackend::SwapBehaviour::NoFlush,
                                                 mbgl::gfx::ContextMode::Unique);

    textureInterface = FlMbglTextureInterface::Create(scaledSize);
    renderer = std::make_unique<mbgl::Renderer>(*getBackend(), pixelRatio_, localFontFamily);
  }

  // Return the RendererBackend for this frontend.
  mbgl::gfx::RendererBackend* getBackend() { return backend->getRendererBackend(); }

  // Set the size and pixel ratio for the backend. If the same values are passed, does nothing.
  void setSizeAndPixelRatio(mbgl::Size size, float pixelRatio) {
    if (this->size != size || this->pixelRatio != pixelRatio) {
      this->size = size;
      this->pixelRatio = pixelRatio;
      auto scaledSize = mbgl::Size{
          static_cast<uint32_t>(size.width * pixelRatio),
          static_cast<uint32_t>(size.height * pixelRatio),
      };

      backend->setSize(scaledSize);
      textureInterface->setSize(scaledSize);
    }
  }

  // Render a frame using the current update parameters.
  void renderFrame() {
    if (renderer && updateParameters) {
      mbgl::gfx::BackendScope guard{*getBackend()};

      auto updateParameters_ = updateParameters;
      renderer->render(updateParameters_);
      
      if (backend->hasResource()) {
        auto image = backend->readStillImage();
        textureInterface->update(image.data.get(), image.bytes());
      }
    }
  }

  void reset() override {
    assert(renderer);
    renderer.reset();
  }

  void update(std::shared_ptr<mbgl::UpdateParameters> updateParameters_) override {
    updateParameters = updateParameters_;
  }

  const mbgl::TaggedScheduler& getThreadPool() const override { return backend->getRendererBackend()->getThreadPool(); }

  void setObserver(mbgl::RendererObserver& observer_) override {
    assert(renderer);
    renderer->setObserver(&observer_);
  }

  int64_t getTextureId() const { return textureInterface->getTextureId(); }

 private:
  mbgl::Size size;
  float pixelRatio;
  std::unique_ptr<mbgl::gfx::HeadlessBackend> backend;
  std::unique_ptr<mbgl::Renderer> renderer;
  std::unique_ptr<flmbgl::FlMbglTextureInterface> textureInterface;
  std::shared_ptr<mbgl::UpdateParameters> updateParameters;
};
}  // namespace flmbgl
