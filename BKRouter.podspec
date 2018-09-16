Pod::Spec.new do |s|
  s.name         = "BKRouter"
  s.version      = "0.0.1"
  s.summary      = "BKRouter is a navigator for UIViewControllers on iOS"
  s.homepage     = "https://github.com/ReactComponentKit/BKRouter"
  s.license      = "MIT"
  s.author             = { "Burt.K" => "skyfe79@gmail.com" }
  s.social_media_url   = "http://twitter.com/skyfe79"
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.swift_version         = "4.1"
  s.source       = { :git => "https://github.com/ReactComponentKit/BKRouter.git", :tag => "#{s.version}" }
  s.source_files  = "BKRouterApp/BKRouter/**/{*.swift}"
  s.requires_arc = true
end