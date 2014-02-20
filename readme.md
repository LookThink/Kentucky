# Kentucky
###### Straight from the source.

[![Gem Version](https://badge.fury.io/rb/kentucky.png)](http://badge.fury.io/rb/kentucky)

***

## CHANGELOG

**0.6.0**

Updated project-settings.scss to include more settings, removed !default tags
Added forms.scss (in place of Formalize, in addition to the normalize)
Added prefixer.scss (by request)
Added timing-functions.scss
Added remify function
Reworked font-size mixin to use remify
Major alterations to typography to establish smoother vertical rhythm from the start



***

## What is Kentucky?
Kentucky is LookThink's contribution to further enhance an already stellar SCSS library put together by the people at [ThoughtBot](http://www.thoughtbot.com/). Their mixin library, [Bourbon](http://bourbon.io/), and grid system, [Neat](http://neat.bourbon.io/), now serve as the base to all LookThink projects.

Kentucky also includes a variety of mixins from various projects that we find useful and weren't included in Bourbon. Additionally, it includes a handy-dandy file (_defaults.scss) for handling all of your variables, keeping them centralized and easy to maintain.

***

## How do I get Kentucky?
To install Kentucky:

+ Open Terminal.
+ Navigate to your project folder (`cd LookThink/Project`).

At this point there are two options - you may install Kentucky in an existing SCSS folder or, for static (non-CMS) projects, you may install a full project directory.

+ **For CMS or existing folder structures:**
	+ Navigate to your SCSS/styles folder (`cd scss`).
	+ Type `gem install kentucky`.
	+ Type `kentucky install`.
		
+ **For static, non-CMS projects:**
	+ Type `gem install kentucky`.
	+ Type `kentucky install --dir`.
	
After installing Kentucky, you need to set SCSS to watch your stylesheets for changes and compile your usable CSS file.

+ Navigate to your project's home folder (if you are in the SCSS folder, type `cd ../`)
+ Type `sass --watch input:output` (i.e., `sass --watch scss/style.scss:css/style.css`)

Now, whenever a change is made to an SCSS file, your code will be compiled and exported to the location dictated.

***

## Need help?
Fear not! Bourbon and Neat are fully documented and easy to follow. Need more general help? The SCSS documentation isn't grand, but it's better than not having any. See the list below for help with coding out your projects!

+ [Official SCSS Reference](http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html#)
+ [Bourbon Documentation](http://bourbon.io/docs/)
+ [Neat Documentation](http://neat.bourbon.io/docs/)
+ *Updated code manual coming soon!*
