Pod::Spec.new do |s|
  s.name             = 'flmbgl'
  s.version          = '0.0.1'
  s.summary          = 'Bindings for using maplibre-native in Flutter on macOS'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'kekland' => 'kk.erzhan@gmail.com' }

  s.source           = { :path => '.' }

  s.osx.source_files = ['flmbgl/Sources/flmbgl/*', '../darwin/Sources/flmbgl_darwin_common/*']]
  s.osx.vendored_frameworks = 'flmbgl/Artifacts/flmbgl_macos_xcframework.xcframework'
  s.osx.dependency 'FlutterMacOS'
  s.osx.deployment_target = '10.15'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
end
