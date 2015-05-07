# ofSite2

An internationalized site for openFrameworks.  Built on the [Middleman](https://middlemanapp.com) framework for static sites.

## Installation Instructions

See <https://middlemanapp.com/basics/install/> for more detailed instructions.

```bash

gem install middleman

```

You'll also need a copy of [ImageMagick](http://www.imagemagick.org) for use with the [favicon generation library](https://github.com/follmann/middleman-favicon-maker).  on OSX, the easiest way to install this is with [Homebrew](http://brew.sh): `brew install imagemagick`.

## Running the Site

```bash

middleman         # This will run the site locally.
middleman build   # This will generate a static version of the site.
middleman deploy  # This will deploy the site to Github Pages.

```

Typically, `middleman` is sufficient for running the local copy of the site.

## Directory Structure

##### `config.rb`

This is the main configuration code for the site.  Changing things within here will absolutely break the site—twiddle at your own risk.

##### `/data`

This contains algorithmically generated content—current version numbers, git commit hashes, the like.  It can contain both JSON (`.json`) and YAML (`.yml`) files.  

##### `/helpers`

This contains snippets of code that are used in the generation of the site, typically within the HTML.  For instance, the method to determine the homepage link based on current language, or a helper to write header links with tooltips.  Each file in this directory should be named with the `underscore_name` of the `CamelCased` module within, ie: `header_helpers.rb` contains the `HeaderHelpers` module.  That way these modules can be automatically recognized and initialized. 

##### `/locales`

This directory contains the localization files for each language (as `YAML` files.)  Each language has a specific file, and the keys should match between the languages.  You can use `%{variable_name}` for interpolation of data.  For more information and documentation, see the [Ruby I18n gem](https://github.com/svenfuchs/i18n) and the [Middleman I18N docs](https://middlemanapp.com/advanced/localization/). 

##### `/source`

This is the main source code for the site.

###### `/source/layouts`

This contains the layout, which is the wrapper around all the HTML pages. 

###### `/source/partials`

This is where reusable template bits go, sucha as the header, the footer, etc.

###### `/source/localizable_pages`

These are all the reusable content files.  They take their translations from the locales folder.

They're written in [HAML](http://haml.info), a variant of HTML that uses significant whitespace to handle closing tags.  

###### `/source/localized_markdown`

These are pre-translated markdown files, one for each language that is needed.  the language extension between the file name and the `.md` indicates which language is used for each one.  They can be included into the `localizable_pages` as partials:

```ruby
    = partial "localized_markdown/homepage-message"
```