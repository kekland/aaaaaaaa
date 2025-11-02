import Foundation

#if canImport(Flutter)
  import Flutter
#endif

#if canImport(FlutterMacOS)
  import FlutterMacOS
#endif

@_cdecl("FlMbglPluginGlobals_getTextureRegistry")
public func FlMbglPluginGlobals_getTextureRegistry() -> UnsafeRawPointer? {
  guard let proxy = FlMbglPluginGlobals.textureRegistry else {
    return nil
  }
  return Unmanaged.passUnretained(proxy).toOpaque()
}

@objc public class FlMbglPluginGlobals: NSObject {
  @objc public static var textureRegistry: FlutterTextureRegistryProxy?
}
