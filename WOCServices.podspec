#
# Be sure to run `pod lib lint WOCServices.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WOCServices'
  s.version          = '0.1.0'
  s.summary          = 'A short description of WOCServices.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Amberbady/WOCServices'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Amberbady' => '13690039192@163.com' }
  s.source           = { :git => 'https://github.com/Amberbady/WOCServices.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'WOCServices/Classes/**/*'
  
  # s.resource_bundles = {
  #   'WOCServices' => ['WOCServices/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # 这里需要设置依赖关系，pod中才能进行调用，否则会报错，找不到对应文件
  s.dependency 'BeeHive', '1.1.1'
end
