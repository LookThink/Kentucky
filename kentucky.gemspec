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
  s.homepage    = "https://github.com/geebru/Kentucky"
  s.summary     = "SCSS project base and mixin library."
  s.description = <<-DESC
Kentucky is a class-independent front-end framework built as a standard project starting point.
  DESC

  #s.rubyforge_project = "bourbon"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('sass', '~> 3.4')
  s.add_dependency('thor')

  s.add_development_dependency('aruba', '= 0.4.11')
  s.add_development_dependency('rake')
end
