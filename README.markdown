Nanoc-Driven ToolKit for agile static-project development
=========================================================


****THIS PROJECT IS UNDER DEVELOPMENT****





By default
------------  
  
  - Relative paths (links, syles, javascripts, images...). Works perfectly in your browser on http:// and file:// protocols.
  



Installation
-----------

`$ gem install bundler` if you don't have it installed

`$ git clone git@github.com:vieron/nanoc-compass-bootstrap.git your-project-name` clone the repository

`$ cd your-project-name`

`$ bundle install` Install all gems necessary for toolkit works.

It's recommended prior knowledge of [nanoc](http://nanoc.stoneship.org/) and [compass](http://compass-style.org/) tools.



Tools included
-------------

###Compass###

  http://compass-style.org


####Compass Extensions####
  
- **Compass rgbapng Extension**

  https://github.com/aaronrussell/compass-rgbapng
  
  rgbapng is a Compass plugin for providing cross browser compatible RGBA support. It works by creating single pixel alpha-transparent PNGs on the fly for browsers that don't support RGBA. It uses the pure Ruby ChunkyPNG library resulting in hassle-free installation and deployment.


- **Compass OMG-TEXT Extension**

  http://jaredhardy.com/omg-text/
  
  https://github.com/jhardy/OMG-TEXT
  The omg-text extension provides a mixin with a simple syntax for creating your awesome text shadows. There are three shadow styles for you choose from, flat, shaded, and offset.

  
  ------------------------------------------------------------------------------------


###Rake tasks###

- **W3C Validation Task**

  Execute the below command in the root directory and all files in the output will be send to the W3C Validator
  
  `rake validate`
  
- **Optimize .png files with pngcrush** 
  Requires pngcrush, you can install it with Homebrew so:
  
    `brew install pngcrush`


  
  ------------------------------------------------------------------------------------
  
  
###Nanoc Helpers###

- *Html Breadcrumbs*
   `<%= breadcrumbs [opts] %>`
   
   opts is a hash:
    :class => 'breadcrumbs', 
    :separator => ' &raquo; ', 
    :first_item_class => 'first', 
    :last_item_class => 'last', 
    :item_class => '', 
    :current_is_link => false
    

- *SEO friendly title*

  `<title><%=title%></title>`
  
  
  

  ------------------------------------------------------------------------------------  

###Nanoc Filters###

- *Minify*
  
  Minify .js .css, .scss in content/assets/(images/javascripts) and writes the minified version to output/assets/**

  `filter :minify` inside a compile rule
  
  ¡NOTE! Last nanoc version includes UglifyJS that does the same.

  
  


TODOS
-----------


- hecharle un ojo a esto
  - http://www.h3rald.com/articles/take-back-your-site-with-nanoc/
  
- add
  http://chriseppstein.github.com/sass-recipes/
  http://moox.github.com/compass-recipes/

- Compass Spriting
  - http://compass-style.org/reference/compass/utilities/sprites/base/
  - http://compass-style.org/reference/compass/helpers/sprites/
