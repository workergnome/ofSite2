# ofSite2

An internationalized site for OpenFrameworks.  Built on the [Middleman](https://middlemanapp.com) framework for static sites.

## Installation Instructions:

See <https://middlemanapp.com/basics/install/> for more detailed instructions.

```bash
gem install middleman
```

You'll also need a copy of [ImageMagick](http://www.imagemagick.org) for use with the [favicon generation library](https://github.com/follmann/middleman-favicon-maker).  on OSX, the easiest way to install this is with [Homebrew](http://brew.sh): `brew install imagemagick`.


## Directory Structure:

#### `/source/layouts`

This contains the layout, which is the wrapper around all the HTML pages. 

#### `/source/partials`

This is where reusable template bits go, sucha as the header, the footer, etc.

#### `/source/partials`

These are all the little reusable bits.  They take their translations from the locales folder.