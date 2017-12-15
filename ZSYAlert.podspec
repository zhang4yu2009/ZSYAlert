

Pod::Spec.new do |s|

 s.name         = "ZSYAlert"
    s.version      = "1.0.3"
    s.ios.deployment_target = '7.0'
    s.summary      = "A delightful pop-up frame framework."
    s.homepage     = "https://github.com/zhang4yu2009/ZSYAlert"
    s.license              = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "zhang4yu2009" => "647976802@qq.com" }
    s.social_media_url   = "https://weibo.com/u/3298692504"
    s.source       = { :git => "https://github.com/zhang4yu2009/ZSYAlert.git", :tag => s.version }
    s.source_files  = "ZSYAlert"
    s.resources          = "ZSYAlert/*.png"
    s.requires_arc = true

end
