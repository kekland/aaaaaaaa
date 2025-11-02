import Flutter
import Foundation
import flmbgl_darwin_common

public class FlMbglPluginIOS: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let instance = FlMbglPluginIOS()
    FlMbglPluginGlobals.textureRegistry = FlutterTextureRegistryProxy(textures: registrar.textures())
  }
}
