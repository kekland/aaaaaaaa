Pod::Spec.new do |s|
  s.name             = 'flmbgl'
  s.version          = '0.0.1'
  s.summary          = 'Bindings for using maplibre-native in Flutter on iOS'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'kekland' => 'kk.erzhan@gmail.com' }

  s.source           = { :path => '.' }

  s.ios.source_files = ['flmbgl/Sources/flmbgl/*', '../darwin/Sources/flmbgl_darwin_common/*']
  s.ios.vendored_frameworks = 'flmbgl/Artifacts/flmbgl_ios_xcframework.xcframework'
  s.ios.dependency 'Flutter'
  s.ios.deployment_target = '12.0'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
end
