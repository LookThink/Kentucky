# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "kentucky/version"

Gem::Specification.new do |s|
  s.name        = "kentucky"
  s.version     = Kentucky::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Aaron Clemmer", "Greg Bruening", "Chris Brinson"]
  s.email       = ["greg@lookthink.com"]
  s.homepage    = "https://bitbucket.org/lookthink/kentucky"
  s.summary     = "Kentucky Sass Mixins using SCSS syntax."
  s.description = <<-DESC
Writeme
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

  s.add_development_dependency('aruba', '~> 0.4')
  s.add_development_dependency('rake')
end
