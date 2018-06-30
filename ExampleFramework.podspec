Pod::Spec.new do |s|

  s.name         = "ExampleFramework"
  s.version      = "0.0.1"
  s.summary      = ""

  s.description  = <<-DESC
  Here is some description for Framework Example
                   DESC

  s.homepage     = "https://github.com/DSanzh/ExampleFramework"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { "Sanzh" => "dauylov.sanzhar@gmail.com" }

  s.summary      = 'Framework of example'

  s.social_media_url   = "https://twitter.com/dauylov_sanzhar/"
  
  s.platform     = :ios, "10.0"

  s.source       = { :git => "https://github.com/DSanzh/ExampleFramework.git", :tag => '0.0.1' }

  s.source_files = "ExampleFramework/**/*.{c,h,m,hh,swift}"
  
  s.ios.deployment_target = '10.0'
  
  s.swift_version = '4.1'

  s.dependency "EasyPeasy"
  
end
