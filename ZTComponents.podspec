#
# Be sure to run `pod lib lint ZTComponents.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZTComponents'
  s.version          = '1.0.4'
  s.summary          = '对原生组件进行扩展'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        1 .语法调用.
                       DESC

  s.homepage         = 'https://github.com/1296891592qq/ZTComponents'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1296891592qq' => '1296891592@qq.com' }
  s.source           = { :git => 'https://github.com/1296891592qq/ZTComponents.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ZTComponents/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZTComponents' => ['ZTComponents/Assets/*.png']
  # }
  
  s.subspec 'Foundation' do |ss|
     ss.source_files = 'ZTComponents/Classes/Foundation/*.{h,m}'
  end

  
  s.subspec 'Category' do |ss|
     ss.source_files = 'ZTComponents/Classes/Category/*.{h,m}'
     ss.dependency 'ZTComponents/Foundation'
  end
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
