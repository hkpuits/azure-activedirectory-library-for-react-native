
Pod::Spec.new do |s|
  s.name         = "RNAzureAdal"
  s.version      = "1.0.9"
  s.summary      = "RNAzureAdal"
  s.description  = <<-DESC
                  RNAzureAdal
                   DESC
  s.homepage     = "https://github.com/hkpuits/azure-activedirectory-library-for-react-native"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "durgaprasad.budhwani@gmail.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/hkpuits/azure-activedirectory-library-for-react-native.git", :tag => "master" }
  s.source_files  = "RNAzureAdal/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
