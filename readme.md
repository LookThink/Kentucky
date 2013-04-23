# Chaser
###### Remember to tip your bartender!

***

## What is Chaser?
Chaser is LookThink's contribution to further enhance an already stellar SCSS library put together by the people at [ThoughtBot](http://www.thoughtbot.com/). Their mixin library ([Bourbon](http://bourbon.io/)) and grid system ([Neat](http://neat.bourbon.io/)) now serve as the base to all LookThink projects.

Chaser includes a variety of mixins from various projects that we find useful and weren't included in Bourbon. It also includes a handy-dandy file (_defaults.scss) for handling all of your variables, keeping them centralized and easy to maintain.

***

## What's changed?
LookThink now uses SCSS exclusively as it's CSS preprocessor language of choice. The previous framework was written in LESS and we've taken steps to continually evolve how we code projects.

We've also lessened the maintenance burden by relying on libraries that already exist and do the exact same things our previous framework did. The new method for acquiring the framework also means you'll always have the most up to date version of the components.

Lastly, we've opened a Trello board for all feedback, issue / bug reporting, and additions to the framework. You can track it's growth as well as alert us to potential or existing problems in Chaser.

***

## How do I get Chaser?
There are a few steps needed to build the new framework. Luckily for you we've automated as much as we can and all you have to do is copy-paste (or type if you're so inclined) a few lines into your terminal and you're set!

+ Create your project folder
+ Create an **'scss'** folder within your project
+ Open Terminal

        $ cd 'project-folder'
        $ chaser install
        
+ If full project structure is required, add the -dir command to the install:

        $ chaser install -dir
        
    *This will install the following folders for you: fonts, images, scss, style, and scripts*

+ Run the SASS watch command

        $ sass --watch scss/style.scss:style/style.css

***

## Need help?
Fear not! Bourbon and Neat are fully documented and easy to follow. Need more general help? The SCSS documentation isn't grand, but it's better than not having any. See the list below for help with coding out your projects!

+ [Official SCSS Reference](http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html#)
+ [Bourbon Documentation](http://bourbon.io/docs/)
+ [Neat Documentation](http://neat.bourbon.io/docs/)
+ *Updated code manual coming soon!*
