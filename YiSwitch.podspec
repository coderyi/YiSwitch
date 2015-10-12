Pod::Spec.new do |s|
  s.name         = "YiSwitch"
  s.version      = "0.1"
  s.summary      = "YiSwitch"
  s.homepage     = "https://github.com/coderyi/YiSwitch"
  s.license      = "MIT"
  s.authors      = { "coderyi" => "coderyi@163.com" }
  s.source       = { :git => "https://github.com/coderyi/YiSwitch.git", :tag => "0.1" }
  s.frameworks   = 'Foundation', 'CoreGraphics', 'UIKit'
  s.platform     = :ios, '7.0'
  s.source_files = 'YiSwitch/YiSwitch/**/**/*.{h,m}'
  s.requires_arc = true
end