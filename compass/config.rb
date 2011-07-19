require "rgbapng"
require "omg-text"

project_path = File.dirname(__FILE__)
http_path    = '../'
output_style = :compact
sass_dir     = '../content/assets/stylesheets'
css_dir      = '../output/assets/stylesheets'

images_dir = "../output/assets/images"
javascripts_dir = "output/assets/javascripts"

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false

sass_options = {
  :syntax => :scss
}
