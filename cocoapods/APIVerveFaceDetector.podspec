Pod::Spec.new do |s|
  s.name             = 'APIVerveFaceDetector'
  s.version          = '1.2.3'
  s.summary          = 'Face Detector is a face detection API that analyzes an image and reports whether it contains human faces.'
  s.description      = <<-'DESC'
Face Detector is a face detection API that analyzes an image and reports whether it contains human faces. Paid plans add the face count and bounding box coordinates with a confidence score for each detected face.

This iOS/macOS SDK provides a convenient way to access the Face Detector from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/facedetect?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/facedetect-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveFaceDetector/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
