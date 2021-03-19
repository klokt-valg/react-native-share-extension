require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "ReactNativeShareExtension"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['repository']['url']
  s.platform     = {:ios=> "9.0", :tvos=>"10.0", :osx=>"10.13"}
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '10.0'
  s.osx.deployment_target = '10.13'

  s.source       = { :git => "https://github.com/klokt-valg/react-native-share-extension.git", :tag => "master" }
  s.ios.source_files  = "ios/**/*.{h,m}"
  s.tvos.source_files  = "ios/**/*.{h,m}"
  s.osx.source_files  = "macos/**/*.{h,m}"

  s.dependency 'React'
end