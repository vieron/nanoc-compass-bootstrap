require "rgbapng"
require "omg-text"

project_path = File.dirname(__FILE__)
http_path    = '../'
output_style = :compact
sass_dir     = '../content/stylesheets'
css_dir      = '../output/stylesheets'

images_dir = "../output/images"
javascripts_dir = "output/javascripts"

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false

sass_options = {
  :syntax => :scss
}
