$LOAD_PATH.unshift 'lib'
require "dropset/version"

Gem::Specification.new do |s|
  s.name              = "dropset"
  s.version           = Dropset::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Calculates the number of reps in a dropset (Descending set)"
  s.homepage          = "https://github.com/cmaujean/dropset"
  s.email             = "cmaujean@gmail.com"
  s.authors           = [ "Christopher Maujean" ]
  s.has_rdoc          = false

  s.files             = %w( README.markdown Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("bin/**/*")
  s.files            += Dir.glob("spec/**/*")
  
  s.bindir            = 'bin'
  s.executables       = %w( dropset )
  s.description       = <<desc
  Calculates the number of reps in a dropset (Descending set)
  
      require 'dropset'
      Dropset.calc(10) #=> 55
      
desc
end
