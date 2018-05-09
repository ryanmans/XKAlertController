#
#  Be sure to run `pod spec lint XKAlertController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "XKAlertController"
  s.version      = "0.0.2"
  s.summary      = "系统UIActionSheet、UIAlertView、UIAlertController方法使用封装."
  s.homepage     = "https://github.com/RyanMans/XKAlertController"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ALLen、LAS' => '1696186412@qq.com' }
  s.source           = { :git => 'https://github.com/RyanMans/XKAlertController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
 s.source_files = 'XKAlertController/Classes/**/*'

end
