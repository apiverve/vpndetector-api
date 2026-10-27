Pod::Spec.new do |s|
  s.name             = 'APIVerveVPNProxyDetector'
  s.version          = '1.2.3'
  s.summary          = 'VPN Proxy Detector checks any IP address to detect active VPN connections and cloud datacenter hosting.'
  s.description      = <<-'DESC'
VPN Proxy Detector checks any IP address to detect active VPN connections and cloud datacenter hosting. Lookups return boolean flags for VPN and datacenter status plus the verification date, with paid tiers adding Tor detection and risk levels.

This iOS/macOS SDK provides a convenient way to access the VPN Proxy Detector from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/vpndetector?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/vpndetector-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveVPNProxyDetector/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
