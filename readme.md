# Kentucky
###### Straight from the source.

[![Gem Version](https://badge.fury.io/rb/kentucky.png)](http://badge.fury.io/rb/kentucky)

***

## CHANGELOG

**0.8.0**

Major restructuring to become independent from Bourbon/Neat
Created custom grid system
Set up remify function
Adjustments to single-direction margins and typography

***

## What is Kentucky?
Kentucky is an SCSS framework that works entirely in the background, removing the need to fill your HTML with multiple, repetitive classes. It's bundled with a mobile-ready grid system and a plethora of CSS3 mixins and extends.

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
+ *Updated documentation coming soon!*
