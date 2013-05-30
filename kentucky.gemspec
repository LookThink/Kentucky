# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "kentucky/version"

Gem::Specification.new do |s|
  s.name        = "kentucky"
  s.version     = Kentucky::VERSION
  s.license     = "MIT"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Aaron Clemmer", "Greg Bruening", "Chris Brinson"]
  s.email       = ["greg@lookthink.com"]
  s.homepage    = "https://bitbucket.org/lookthink/kentucky"
  s.summary     = "Kentucky Bourbon, Neat SCSS Mixins and Grid System"
  s.description = <<-DESC
Kentucky is LookThink's contribution to further enhance an already stellar SCSS library put together by the people at ThoughtBot. Their mixin library (Bourbon) and grid system (Neat) now serve as the base to all LookThink projects. Kentucky also includes a variety of mixins from various projects that we find useful and weren't included in Bourbon. Additionally, it includes a handy-dandy file (_defaults.scss) for handling all of your variables, keeping them centralized and easy to maintain.
  DESC

  #s.rubyforge_project = "bourbon"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('sass', '>= 3.2.0')
  s.add_dependency('bourbon', '~> 3.1')
  s.add_dependency('neat', '~> 1.2')
  s.add_dependency('thor')

  s.add_development_dependency('aruba', '= 0.4.11')
  s.add_development_dependency('rake')
end
