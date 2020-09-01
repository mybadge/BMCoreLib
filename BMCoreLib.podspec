#
# Be sure to run `pod lib lint BMCoreLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BMCoreLib'
  s.version          = '0.1.2'
  s.summary          = 'A short description of BMCoreLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/805413147@qq.com/BMCoreLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '805413147@qq.com' => 'mybadge@163.com' }
  s.source           = { :git => 'https://github.com/805413147@qq.com/BMCoreLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'


  #平台信息
  s.platform      = :ios, '10.0'  #支持的平台
  s.ios.deployment_target = '10.0'
  # 是否是静态库 这个地方很重要 假如不写这句打出来的包 就是动态库 不能使用 一运行会报错 image not found
  s.static_framework  =  true
  # arc和mrc选项
  s.requires_arc = true
  # 链接设置 重要
  # s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
  
  # 你的源码位置，源文件 包含 h,m
  s.source_files = 'BMCoreLib/Classes/**/*'
  
  
   s.resource_bundles = {
     'BMCoreLib' => ['BMCoreLib/Assets/*.png', 'BMCoreLib/Assets/*.jsbundle']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # 需要对外开放的头文件   打包只公开特定的头文件
#  s.public_header_files = 'VideoPlayerLib/Classes/**/VideoPlayerLib.h'
  # 调试公开所有的头文件 这个地方下面的头文件 如果是在Example中调试 就公开全部，需要打包就只公开特定的h文件
  # s.public_header_files = 'VideoPlayerLib/Classes/**/*.h'
  
  
  
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  version = '0.62.2'
  
  s.dependency "React-Core", version
  s.dependency "React-Core/DevSupport", version
  s.dependency "React-Core/RCTWebSocket", version
  s.dependency "React-RCTActionSheet", version
  s.dependency "React-RCTAnimation", version
  s.dependency "React-RCTBlob", version
  s.dependency "React-RCTImage", version
  s.dependency "React-RCTLinking", version
  s.dependency "React-RCTNetwork", version
  s.dependency "React-RCTSettings", version
  s.dependency "React-RCTText", version
  s.dependency "React-RCTVibration", version
  
  # 表示依赖的系统类库(多个) 注意:系统类库不需要写全名 去掉开头的lib
  # s.libraries = 'stdc++','sqlite3'
  
  

end
