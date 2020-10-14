#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'ImageProcessor'
  s.version          = '0.0.1'
  s.summary          = 'Swift implementatinon using OpenCV2.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.swift_version = '4.2'
  s.ios.deployment_target = '11.0'
  s.dependency 'Flutter'

	s.preserve_paths = 'opencv2.framework'
	s.xcconfig = { 'OTHER_LDFLAGS' => '-framework opencv2' }
	s.vendored_frameworks = 'opencv2.framework'

	#Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
#	s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
