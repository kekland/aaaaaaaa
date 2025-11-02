#include "flmbgl_texture_interface.hpp"

#if FLMBGL_MACOS
#include "macos/flmbgl_macos_texture_interface.hpp"
#endif

namespace flmbgl {
std::unique_ptr<FlMbglTextureInterface> FlMbglTextureInterface::Create(mbgl::Size size_) {
#if FLMBGL_MACOS
  return std::make_unique<flmbgl::FlMbglMacosTextureInterface>(size_);
#endif

  return nullptr;
}
}  // namespace flmbgl
