# 3.1.0

* Update Normalize to match latest update (4.0) from [Normalize.css](https://github.com/necolas/normalize.css/blob/master/normalize.css)

# 3.0.0

* Full restructuring and rethinking of Kentucky
  * Included project folders to jumpstart proper SCSS organization for projects
  * Updated variables to follow new naming scheme, `coreTarget-type-modifier` (e.g., `font-size-h1`, `border-radius-base`, etc.)
  * Updated normalize to better suit current needs

---
# 1.2.1

### Bug Fix

* Fixed spelling error in forms file

---
# 1.2.0

### Revision

* Moved forms, typography, and normalize outside of base folder to better signify that users can and should use these to edit base styles, instead of creating files that do essentially the same things
* Changed link hover variable to be more BEM friendly

### Removed

* Removed tint-shade, alignment, capslock and show-hide as they weren't being used and/or are built into SASS in some way

---
# 1.1.0

### Feature

* Added row mixin that pulls content left/right to allow content to touch container edges
* Added clearfix to outer-container mixin

---
# 1.0.5

### Bug fixes

* Resolve spelling error in antialias helper

---
# 1.0.4

### Bug fixes

* Resolve deprecation warning in HTML5-Input-Types helper

---
# 1.0.2 / 1.0.3

### Bug fixes

* Removed Bourbon/Neat dependency from Kentucky gem install process

---
# 1.0.1

### Bug fixes

* Resolved typo in transition mixin

---
# 1.0.0

### Features

* Initial release
* Full addition of standalone grid system
* Shifted gutters from using rems to pixels
* Relocated all project variables to project-settings
