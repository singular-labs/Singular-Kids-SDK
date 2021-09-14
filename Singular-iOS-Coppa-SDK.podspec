Pod::Spec.new do |spec|
  spec.name         = "Singular-Coppa-SDK"
  spec.version      = "11.0.0"
  spec.summary      = "Singular's iOS Coppa SDK"
  spec.description  = "Singular's SDK integration for iOS"
  spec.license      = "MIT"
  spec.homepage     = "https://www.singular.net/"
  spec.author       = "Singular Labs"
  spec.source       = { :git => "https://github.com/singular-labs/Singular-iOS-Coppa-SDK.git", :tag => spec.version.to_s }

  spec.static_framework = true
  spec.ios.deployment_target = "8.0"
  spec.ios.source_files  = 'headers/*.h'
  spec.ios.resources = ['headers/*.js']
  spec.ios.vendored_frameworks = 'frameworks/Singular.framework'
  spec.ios.frameworks  = 'Security', 'SystemConfiguration', 'iAd', 'StoreKit', 'WebKit'
  spec.ios.libraries = 'sqlite3.0', 'z'
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.ios.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/Singular-SDK/frameworks/**',
    'OTHER_LDFLAGS' => '$(inherited) -framework "Singular"'
  }

end

