Nanoc-Driven ToolKit for agile static-project development
=========================================================

Installation
-----------

`gem install bundle #if you don't have it installed`
`git clone git@github.com:vieron/nanoc-compass-bootstrap.git your-project-name #clone the repository`
`cd your-project-name`
`bundle install #Install all the gems necesary for tools works`'

It's recommended prior knowledge of [nanoc](http://nanoc.stoneship.org/) and [compass](http://compass-style.org/) tools.



Tools included
-------------

###Compass###
  http://compass-style.org


####Compass Estensions####
  
- **Compass rgbapng Extension**
  https://github.com/aaronrussell/compass-rgbapng
  rgbapng is a Compass plugin for providing cross browser compatible RGBA support. It works by creating     single pixel alpha-transparent PNGs on the fly for browsers that don't support RGBA. It uses the pure Ruby ChunkyPNG library resulting in hassle-free installation and deployment.

- **Compass OMG-TEXT Extension**
  http://jaredhardy.com/omg-text/
  https://github.com/jhardy/OMG-TEXT
  The omg-text extension provides a mixin with a simple syntax for creating your awesome text shadows. There are three shadow styles for you choose from, flat, shaded, and offset.


###Rake tasks###
- **W3C Validation Task**
  Execute the below command in the root directory and all files in the output will be send to the W3C Validator
  
  `rake validate`
  
  
###Nanoc Helpers###
- *Html Breadcrumbs*

- *SEO friendly title*
   

  


TODOS
-----------

- add http://chriseppstein.github.com/sass-recipes/