# Uncomment the next line to define a global platform for your project
source 'https://cdn.cocoapods.org/'
platform :ios, '14.0'
inhibit_all_warnings!

def shared_pods
  use_frameworks!
    pod 'R.swift'

end

target 'ios-noteapp' do
 shared_pods
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
        end        
    end
end