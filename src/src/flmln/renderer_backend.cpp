#include "renderer_backend.hpp"

#if defined(FLMLN_MTL)
#include "mtl/renderer_backend.hpp"
#elif defined(FLMLN_VULKAN)
#include "vulkan/renderer_backend.hpp"
#elif defined(FLMLN_OPENGL)
#include "gl/renderer_backend.hpp"
#endif

namespace flmln {
std::unique_ptr<RendererBackend> RendererBackend::create(mbgl::gfx::ContextMode contextMode) {
#if defined(FLMLN_MTL)
  return std::make_unique<mtl::RendererBackend>(contextMode);
#elif defined(FLMLN_VULKAN)
  return std::make_unique<vulkan::RendererBackend>(contextMode);
#elif defined(FLMLN_OPENGL)
  return std::make_unique<gl::RendererBackend>(contextMode);
#else
  static_assert(false, "flmln: no graphics backend defined");
#endif
  return nullptr;
}
}  // namespace flmln
