require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNOpenPGP"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/orhan/react-native-openpgp"
  s.license      = "MIT"
  s.authors      = { "Place Holder" => "email@email.com" }
  s.platforms    = { :ios => "9.0", :tvos => "9.0" }
  s.source       = { :git => "https://github.com/orhan/react-native-openpgp.git", :tag => "v#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end
