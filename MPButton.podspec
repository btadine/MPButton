Pod::Spec.new do |s|
  s.name             = 'MPButton'
  s.version          = '0.1.0'
  s.summary          = 'A generic UIControl decorator that provides an easy way to deal with complex layout inside buttons.'

  s.description      = <<-DESC
Have you ever tried to edit the constraints of the elements inside a UIButton? Or adding new elements without breaking existing layout? Just make the touchable area bigger? If you're smiling, probably you did!

MPButton comes to the stage to solve this issues. Wraps any view that you provide adding UIControlEvents (ie. touchUpInside) and custom hit box.
                       DESC

  s.homepage         = 'https://github.com/btadine/MPButton'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'btadine' => 'marcos.escac@gmail.com' }
  s.source           = { :git => 'https://github.com/btadine/MPButton.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'MPButton/Classes/MPButton.swift'
end
