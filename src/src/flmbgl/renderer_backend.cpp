#include "renderer_backend.hpp"

#ifdef FLMBGL_MTL
#include "mtl/renderer_backend.hpp"
#elif FLMBGL_VULKAN
#include "vulkan/renderer_backend.hpp"
#elif FLMBGL_OPENGL
#include "opengl/renderer_backend.hpp"
#endif

namespace flmbgl {
std::unique_ptr<RendererBackend> RendererBackend::create(mbgl::gfx::ContextMode contextMode) {
#ifdef FLMBGL_MTL
  return std::make_unique<mtl::RendererBackend>(contextMode);
#elif FLMBGL_VULKAN
  return std::make_unique<vulkan::RendererBackend>(contextMode);
#elif FLMBGL_OPENGL
  return std::make_unique<opengl::RendererBackend>(contextMode);
#endif
  return nullptr;
}
}  // namespace flmbgl
