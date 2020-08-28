require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-rn-zendesk"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-rn-zendesk
                   DESC
  s.homepage     = "https://github.com/chauhan-saurabh/react-native-rn-zendesk"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Saurabh Chauhan" => "saurabh.chauhan@smartdatainc.net" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/chauhan-saurabh/react-native-rn-zendesk.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true
  s.dependency "ZDCChat"
  s.dependency "ZendeskChatSDK"
  s.dependency "React"

  # ...
  # s.dependency "..."
end

