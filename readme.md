# Kentucky
###### Straight from the source.

[![Gem Version](https://badge.fury.io/rb/kentucky.svg)](https://badge.fury.io/rb/kentucky)

**Kentucky is a front-end project kickstart system to allow for rapidly beginning CSS development on a myriad of projects.**

At its core, Kentucky itself provides no initial CSS other than a slightly modified [Normalize.css](https://necolas.github.io/normalize.css/) and typographic styles dictated by the `utilities/variables` file.

It's meant to provide SCSS structure and guidance to ensure projects remain clean and well-organized from the beginning while allowing developers full freedom to use whatever naming conventions, methodologies, and HTML structure required for the project.

---

# Core structure
## Base

The `base/` folder includes two files to start with: `normalize` for increasing expected results and `typography` to apply the variables set in `utilities/variables` to typographic elements. Once created, the files in this folder should rarely be edited unless a fundamental shift in the project design is required.

Additional files to be added to this folder could include: `forms`, `tables`, etc.

## Components

The `components/` folder may contain specific modules like a slider, a loader, a widget, or  anything along those lines. There should typically be a lot of files in `components` since the whole site/application should be mostly composed of tiny modules.

Example files to be included in this folder could include: `buttons`, `dropdown`, `media`, `thumbnails`, etc.

## Layout

The `layout/` folder contains everything that takes part in laying out the site or application. This folder could have stylesheets for the main parts of the site (header, footer, navigation, sidebar) and/or the site grid system (if custom; vendor grid systems should be included in `vendors/`).

Example files to be included in this folder could include: `header`, `footer`, `hero`, `grid`, etc.

## Pages

The `pages/` folder is for page-specific styles. Each file in this folder should be named after the page it relates to.

Example files to be included in this folder could include: `home`, `blog`, `about`, `contact`, etc.

## Utilities

The `utilities/` folder gathers all Sass tools and helpers used across the project. Every global variable, function, mixin and placeholder should be put in here. It already includes `functions`, `mixins`, and `variables` to help jumpstart the process.

Example files to be included in this folder could include: `fonts`, `icons`, `media-queries`, etc.

## Vendors

The `vendors/` folder is to ensure any external libraries or frameworks remain separated from the core site styles. If you require vendor overrides, it's encouraged to make another folder (within the root SCSS folder) called `vendor-extensions` to keep vendor files intact should they release updates.

Example folders and files to be included in this folder include: `bootstrap/files`, `susy/files`, `js-plugin/files`, etc.
