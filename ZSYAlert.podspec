

Pod::Spec.new do |s|

 s.name         = "ZSYAlert"
    s.version      = "1.0.1"
    s.ios.deployment_target = '7.0'
    s.summary      = "A delightful pop-up frame framework."
    s.homepage     = "https://github.com/zhang4yu2009/ZSYAlert"
    s.license              = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "zhang4yu2009" => "647976802@qq.com" }
    s.social_media_url   = "http://weibo.com/u/5348162268"
    s.source       = { :git => "https://github.com/zhang4yu2009/ZSYAlert.git", :tag => s.version }
    s.source_files  = "ZSYAlert/ZSYAlert/*.{h,m}"
    s.resources          = "ZSYAlert/ZSYAlert/*.png"
    s.requires_arc = true

end
