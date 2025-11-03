#include "flutter_texture_interface.hpp"

#if defined(FLMLN_IOS) || defined(FLMLN_MACOS)
#include "platform/darwin/flutter_texture_interface.hpp"
#elif defined(FLMLN_ANDROID)
#endif

namespace flmln {
std::unique_ptr<FlutterTextureInterface> FlutterTextureInterface::Create() {
#if defined(FLMLN_IOS) || defined(FLMLN_MACOS)
  return std::make_unique<darwin::FlutterTextureInterface>();
#elif defined(FLMLN_ANDROID)
  return nullptr;
#else
  static_assert(false, "flmln: no platform defined");
#endif
  return nullptr;
}
}  // namespace flmln