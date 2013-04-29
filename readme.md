# Kentucky
###### Straight from the source.

***

## What is Kentucky?
Kentucky is LookThink's contribution to further enhance an already stellar SCSS library put together by the people at [ThoughtBot](http://www.thoughtbot.com/). Their mixin library, [Bourbon](http://bourbon.io/), and grid system, [Neat](http://neat.bourbon.io/), now serve as the base to all LookThink projects.

Kentucky also includes a variety of mixins from various projects that we find useful and weren't included in Bourbon. Additionally, it includes a handy-dandy file (_defaults.scss) for handling all of your variables, keeping them centralized and easy to maintain.

***

## What's changed?
LookThink now uses SCSS exclusively as it's CSS preprocessor language of choice. The previous framework was written in LESS and we've taken steps to continually evolve how we code projects.

We've also lessened the maintenance burden by relying on libraries that already exist and do the exact same things our previous framework did. The new method for acquiring the framework also means you'll always have the most up to date version of the components.

Lastly, we've opened a Trello board for all feedback, issue / bug reporting, and additions to the framework. You can track it's growth as well as alert us to potential or existing problems in Kentucky.

***

## How do I get Kentucky?
There are a few steps needed to build the new framework. Luckily for you we've automated as much as we can and all you have to do is copy-paste (or type if you're so inclined) a few lines into your terminal and you're set!

If you need to navigate to your project folder in the Terminal, use the `cd` command to get to your project folder: `$ cd projects-base/project/build`.

The simplest way to get Kentucky is to navigate to your project's SCSS folder, open Terminal and type:

		$ kentucky install
		
This will install Bourbon, Neat, and Kentucky in nice little folders ready for you to use. All you need to do is add a folder for your partials, pages, or whatever you need and get to coding!

Kentucky also comes with a few options to make your life easier in particular situations.

If you need a full project structure (fonts, images, etc.), navigate to your project folder, open Terminal:

		$ kentucky install --dir
		
This will create **fonts**, **images**, **SCSS**, **style**, and **scripts** folders in your project folder. It then installs Kentucky inside of the created SCSS folder! Super easy, right?!

The last option is for you Terminal pro's. Kentucky includes the capability to create your project folder, tell Kentucky where it is, and install it there, *without* needing to `cd` there. To do this open Terminal:

		$ mkdir -p projects-base/project/build
		$ kentucky install --path=projects-base/project/build --dir

This creates your project folder, creates all required folders inside of that folder, and installs Kentucky! Boom! This is also runnable without the `--dir` option if all you need is to point Kentucky to the project from anywhere but the project folder, `$ kentucky install --patch=projects-base/project/build/scss`. 

Once Kentucky is installed, navigate to the project folder, open Terminal and run:

		$ sass --watch scss/style.scss:style/style.css
		
Leave Terminal open and whenever you make a change to your SCSS files, it will compile a new style.css for you.

***

## Need help?
Fear not! Bourbon and Neat are fully documented and easy to follow. Need more general help? The SCSS documentation isn't grand, but it's better than not having any. See the list below for help with coding out your projects!

+ [Official SCSS Reference](http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html#)
+ [Bourbon Documentation](http://bourbon.io/docs/)
+ [Neat Documentation](http://neat.bourbon.io/docs/)
+ *Updated code manual coming soon!*
