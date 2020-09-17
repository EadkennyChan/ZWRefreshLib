#
# Be sure to run `pod lib lint SCFoundation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Test'
  s.version          = '0.0.1'
  s.summary          = '对手机信息、APP信息的展示页面.'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
      对手机信息、APP信息的展示页面.
    DESC

  s.homepage         = 'https://github.com/barleychan1988'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eadkennychan' => 'Eadkennychan@gmail.com' }
  s.source           = { :git => 'https://github.com/barleychan1988/ZWUtilityKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.static_framework = true

  s.source_files = '{*,**/*}.{h,m}'
  s.prefix_header_contents = ['#import "Masonry.h"']
  s.resource = ['**/*.xcassets']
  # s.resource_bundles = {
  #   'SCEntity' => ['SCEntity/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit'
  s.dependency 'Masonry'
   s.dependency 'ZWRefreshLib'
  # s.dependency 'ZWUtils'
  # s.dependency 'FiiNetwork'
   
  # s.dependency 'WechatOpenSDK'
  # s.dependency 'JXCategoryView'

  s.xcconfig = {
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    #'OTHER_LDFLAGS' => '"$(inherited)" "-lxml2" "-objc"'
  }
end
