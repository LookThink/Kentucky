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
  s.summary     = "Kentucky Bourbon, Neat SCSS Mixins and Grid System"
  s.description = <<-DESC
Kentucky
Straight from the source.
What is Kentucky?
Kentucky is LookThink's contribution to further enhance an already stellar SCSS library put together by the people at ThoughtBot. Their mixin library (Bourbon) and grid system (Neat) now serve as the base to all LookThink projects.
Kentucky also includes a variety of mixins from various projects that we find useful and weren't included in Bourbon. Additionally, it includes a handy-dandy file (_defaults.scss) for handling all of your variables, keeping them centralized and easy to maintain.
What's changed?
LookThink now uses SCSS exclusively as it's CSS preprocessor language of choice. The previous framework was written in LESS and we've taken steps to continually evolve how we code projects.
We've also lessened the maintenance burden by relying on libraries that already exist and do the exact same things our previous framework did. The new method for acquiring the framework also means you'll always have the most up to date version of the components.
Lastly, we've opened a Trello board for all feedback, issue / bug reporting, and additions to the framework. You can track it's growth as well as alert us to potential or existing problems in Kentucky.
How do I get Kentucky?
There are a few steps needed to build the new framework. Luckily for you we've automated as much as we can and all you have to do is copy-paste (or type if you're so inclined) a few lines into your terminal and you're set!
Create your project folder
Create an 'scss' folder within your project
Open Terminal
$ cd 'project-folder/scss'
$ kentucky install
Run the SASS watch command
$ sass --watch scss/style.scss:style/style.css
Need help?
Fear not! Bourbon and Neat are fully documented and easy to follow. Need more general help? The SCSS documentation isn't grand, but it's better than not having any. See the list below for help with coding out your projects!
Official SCSS Reference
Bourbon Documentation
Neat Documentation
Updated code manual coming soon!
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
