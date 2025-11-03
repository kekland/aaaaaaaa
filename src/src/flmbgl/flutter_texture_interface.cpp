#include "flutter_texture_interface.hpp"

#ifdef FLMBGL_DARWIN
#include "platform/darwin/flutter_texture_interface.hpp"
#endif

namespace flmbgl {
std::unique_ptr<FlutterTextureInterface> FlutterTextureInterface::Create() {
#ifdef FLMBGL_DARWIN
  return std::make_unique<darwin::FlutterTextureInterface>();
#endif
  return nullptr;
}
}  // namespace flmbgl