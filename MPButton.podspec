Pod::Spec.new do |s|
  s.name             = 'MPButton'
  s.version          = '0.1.1'
  s.summary          = 'A generic UIControl decorator that provides an easy way to deal with complex layout inside buttons.'

  s.description      = <<-DESC
                      MPButton wraps any view that you provide adding UIControlEvents (ie. touchUpInside)
                      and custom hit box.
                       DESC

  s.homepage         = 'https://github.com/btadine/MPButton'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'btadine' => 'marcos.escac@gmail.com' }
  s.source           = { :git => 'https://github.com/btadine/MPButton.git', :tag => "0.1.0" }
  s.requires_arc     = true

  s.ios.deployment_target = '9.0'

  s.source_files = 'MPButton/Classes/MPButton.swift'
end
