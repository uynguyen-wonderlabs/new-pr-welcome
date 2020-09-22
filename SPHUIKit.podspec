Pod::Spec.new do |spec|
  spec.name         = "SPHUIKit"
  spec.version      = "1.1.7"
  spec.summary      = 'UI kit components'
  spec.description      = <<-DESC
                        A framework for UI kit components
                       DESC

  spec.homepage     = "https://github.com/SPHTech/SPHUIKit.git"
  spec.source           = { :git => 'git@github.com:SPHTech/SPHUIKit.git', :tag => spec.version.to_s }
  spec.author       = { 'Peter Guo' => 'peterguo@sph.com.sg' }
  spec.license      = { :type => "MIT", :txt => "LICENSE" }
  
  spec.swift_version = '5.0'
  spec.platform     = :ios, "11.0"

  spec.default_subspec = 'SPHBaseUIKit', 'SPHDrawer', 'SPHProgressButton', 'SPHWalkThroughView', 'SPHTokenView'

  spec.subspec 'SPHBaseUIKit' do |baseUIKitSpec|
      baseUIKitSpec.source_files  = "SPHBaseUIKit", "SPHUIKit/SPHBaseUIKit/**/*.{h,m,swift}"
      baseUIKitSpec.dependency 'MBProgressHUD', '1.2.0'
  end
  
  spec.subspec 'SPHDrawer' do |drawerSpec|
      drawerSpec.source_files  = "SPHDrawer", "SPHUIKit/SPHDrawer/**/*.{h,m,swift}"
      drawerSpec.dependency 'SPHUIKit/SPHBaseUIKit'
  end
  
  spec.subspec 'SPHWalkThroughView' do |walkThroughViewSpec|
      walkThroughViewSpec.source_files  = "SPHWalkThroughView", "SPHUIKit/SPHWalkThroughView/**/*.{h,m,swift}"
  end
  
  spec.subspec 'SPHProgressButton' do |progressButtonSpec|
      progressButtonSpec.source_files  = "SPHProgressButton", "SPHUIKit/SPHProgressButton/**/*.{h,m,swift}"
      progressButtonSpec.resources = "SPHProgressButtonAssets", "SPHUIKit/SPHProgressButton/**/*.{png,jpeg,jpg,pdf,storyboard,xib,xcassets}"
  end
  
  spec.subspec 'SPHTokenView' do |tokenSpec|
      tokenSpec.dependency 'SPHUIKit/SPHBaseUIKit'
      tokenSpec.source_files  = "SPHTokenView", "SPHUIKit/SPHTokenView/**/*.{h,m,swift}"
      tokenSpec.resources = "SPHUIKit/SPHTokenView/**/*.{png,jpeg,jpg,pdf,storyboard,xib,xcassets}"
  end
  
  

end
