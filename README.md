# ofSite2
An internationalized site for OpenFrameworks.  Built on the Middleman framework for static sites.


## Installation Instructions:

See <https://middlemanapp.com/basics/install/> for more detailed instructions.

```bash
gem install middleman
```

## Directory Structure:

#### `/source/layouts`

This contains the layout, or the wrapper around all the HTML pages.  This is where the head information goes, as well as the javascript includes, the header, the footer, etc.

#### `/source/partials`

These are all the little reusable bits.  They take their translations from the locales folder.