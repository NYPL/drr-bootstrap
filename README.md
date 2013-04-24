DRR-Bootstrap
================

DRR-Bootstrap - Base front-end framework for [NYPL](http://www.nypl.org/) Digital Reading Room (DRR) Sites to extend. Meant to unify [NYPL Labs](http://www.nypl.org/collections/labs) apps and microsites' look and feel.

Created and maintained by [NYPL Labs](http://www.nypl.org/collections/labs).

# Integration Into Your Website

There are multiple ways you can integrate DRR Bootstrap into your website:

1. Using stand-alone DRR Sass variables and mixins
3. Using [Twitter Bootstrap](http://twitter.github.io/bootstrap/) with DRR Sass overrides
4. Using [Twitter Bootstrap](http://twitter.github.io/bootstrap/) with DRR CSS overrides

## Integration Without Twitter Bootstrap

Download and extract the latest `drr-standalone.zip` (TODO)

Place Sass, font, and image files in your assets directory:

```
assets/
  fonts/
    lato-reg-webfont.eot
    lato-reg-webfont.svg
    lato-reg-webfont.ttf
    ...
  images/
    nypl_logo_lion.png
    nypl_logo.png
    ...
  stylesheets/    
    drr-variables.scss
    drr-mixins.scss
    drr-standalone.scss
```

Include Sass files in application css:

```
/*
 *= require_self
 *= require drr-standalone
 *= require my_styles
 */
```

Or directly from your site's Sass:

```
@import "drr-standalone";
```

There are some configurable items on the top of [drr-variables.scss](views/stylesheets/drr-variables.scss) file that you may have to update, e.g. the path to your fonts or images

You can see an example implementation in the [standalone example](views/stylesheets/standalone-example.scss)

## Integration With Twitter Bootstrap

Download and extract the latest `drr-bootstrap.zip` (TODO)

### Using Sass

Place Twitter Bootstrap, Sass, font, and image files in your assets directory:

```
assets/
  fonts/
    lato-reg-webfont.eot
    lato-reg-webfont.svg
    lato-reg-webfont.ttf
    ...
  images/
    nypl_logo_lion.png
    nypl_logo.png
    ...
  stylesheets/
    bootstrap.min.css
    drr-variables.scss
    drr-mixins.scss
    drr-bootstrap.scss
```

Include Twitter Bootstrap and Sass files in application css:

```
/*
 *= require_self
 *= require bootstrap.min
 *= require drr-bootstrap
 *= require my_styles
 */
```

Or include Sass directly from other Sass files (after Twitter Bootstrap is loaded):

```
@import "drr-bootstrap";
```

There are some configurable items on the top of [drr-variables.scss](views/stylesheets/drr-variables.scss) file that you may have to update, e.g. the path to your fonts or images

### Using CSS

Place CSS, font, and image files in your assets directory:

```
assets/
  fonts/
    lato-reg-webfont.eot
    lato-reg-webfont.svg
    lato-reg-webfont.ttf
    ...
  images/
    nypl_logo_lion.png
    nypl_logo.png
    ..
  stylesheets/
    bootstrap.min.css
    drr-bootstrap.min.css
```

Include Twitter Bootstrap and DRR CSS files in `<head>`:

```
<link rel="stylesheet" href="/path/to/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="/path/to/drr-bootstrap.min.css" type="text/css" />
```

# Development

## Quick start

- Install [Sinatra](http://www.sinatrarb.com/): `gem install sinatra`.
- [Download the latest release](https://github.com/NYPL/drr-bootstrap/zipball/master), or Clone the repo: `git clone git://github.com/NYPL/drr-bootstrap.git`.
- Install required gems: `bundle install`
- Run the app: `ruby index.rb`
- View the app:
  - Without Twitter Bootstrap: `http://localhost:4567`
  - With Twitter Bootstrap: `http://localhost:4567/bootstrap`

## Files

All Sass development files are found in `./views/stylesheets`. Primary DRR files are:

- **drr-variables.scss**: Contains DRR colors, fonts, and other branding attributes
- **drr-mixins.scss**: Contains DRR components, such as type, links, buttons, forms, etc
- **drr-standalone.scss**: Includes DRR variables and mixins
- **drr-bootstrap.scss**: File for overriding default Twitter Bootstrap styles

# Compiling CSS

To compile and compress css files, NYPL-Bootstrap includes a [makefile](Makefile):

Run `make` too compile the Sass files into compiled and compressed CSS files. 

Run `make.bat` if you are using Windows.

## Contributing Developers

* [Brian Foo](http://github.com/beefoo)

