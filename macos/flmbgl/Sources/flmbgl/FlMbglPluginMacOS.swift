import FlutterMacOS
import Foundation

public class FlMbglPluginMacOS: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let instance = FlMbglPluginMacOS()
    FlMbglDarwinPluginGlobals.textureRegistry = FlutterTextureRegistryProxy(textures: registrar.textures)
  }
}
