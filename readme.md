# Kentucky
###### Straight from the source.

[![Gem Version](https://badge.fury.io/rb/kentucky.png)](http://badge.fury.io/rb/kentucky)

###### CHANGELOG

*2.1.0* - Update file semantics to match custom LookThink linter

***

Kentucky was originally an additional library to use with Bourbon as our developers ventured into the realm of front-end frameworks. As time progressed and more frameworks emerged from all corners of the internet it became clear we needed to create our own.

Kentucky is meant to serve as a leaping point for front-end projects. It has no grid system (flexbox is simple enough without complicated DOM cluttering of classes) and is based entirely on the SCSS side of projects. Our framework is invisible to the end user inspecting elements on your site. This leaves developers completely open to use any form of semantics for classes as they're comfortable with.

Below is some base documentation into what is included in Kentucky.

***

### Base

##### Project Settings
This file serves as the starting point for all projects. Full of default values for typography, spacing, colors, etc. it's the perfect place to store global, project-specific variables to use throughout your project.

##### Layouts
A very barebones file meant to serve as a place to keep global layout-related styles.

##### Typography
Slightly deceiving in name, but houses general typography / main content styles and normalization. This is where a majority of the variables (related to typography) in *_project-settings.scss* are called. 

##### Buttons
Normalization of all button-style inputs and serves as a location where project-wide button styles can live.

##### Forms
Normalization of form elements.

##### Lists
Normalization of unordered / ordered lists as well as definition lists. Also includes placeholder extends `%default-ul` and `%default-ol` that can applied to `ul` and `ol` elements that re-add the default list-styles for both as well as some margin/padding.

##### Tables
Normalization of table elements.


### Addons

##### Border
A simple mixin that allows users to define unequal border widths inline with border style and color.

*Usage Example:*

```SCSS
@include border(1px 2px 5px, solid, #b4d455);
```

##### Clearfix
Simple mixin to call the super-micro clearfix snippet based on Theirry Koblentz's minification of Nicolas Gallagher's micro clearfix.

*Usage Example:*

```SCSS
@include clearfix;
```

##### Easings
Variable-based timing functions to be used in transition / animation styles.

*Usage Example:*

```SCSS
.selector {
  transition: all .5s #{$ease-in-quad};
}
```

##### Hide Text
Simple mixin to "hide text" in a new method, akin to the old -9999px hack to move text off of image replaced objects.

*Usage Example:*

```SCSS
@include hide-text;
```

##### Input Types
Primarily created for usage in the button / form normalization files but these can be used to target all button / text inputs at once without having to list each individually.

*Usage Example:*

```SCSS
#{$all-button-inputs} {
  margin-bottom: 20px;
}
```

##### Position
Akin to the border mixin, this allows users to include the type of positioning and coordinates in a single line.

```SCSS
@include position(absolute, 10px 20px 0 0);
```

*Note that all four values are required.*


##### Size
A dead simple mixin allowing users to set the width / height on a single line.

```SCSS
@include size(15px 20px);
```

*A single value will print the same value for width and height.*

```SCSS
@include size(20px);
```


##### Truncate
Mixin that allows single-line, CSS-based truncation with an ellipsis. Requires a width value.

```SCSS
@include truncate(300px);
```


### Functions

##### Assign
Used in the input types addon. Usage is fairly minimal outside of that.

##### Tint / Shade
An improvement to the typical `darken` / `lighten` abilities of SCSS. Tint and shade add white / black respectively to create richer colors.

```SCSS
.selector {
  background-color: tint(#b4d455, 5%);
  color: shade($brand-color, 10%);
}
```
