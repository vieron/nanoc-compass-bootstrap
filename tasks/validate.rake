# #Nanoc validation task
# 
# To use this validation task you need the w3c_validators gem
#   gem install w3c_validators
# and run rake validate on your project root
#
require 'yaml'
require 'w3c_validators'
include W3CValidators

desc "W3C validation of the output folder"
task :validate do
  # perform a setup of all our variables
  setup
  validate '.html'
  validate '.css'
end


private

# Colorize the output :)
def colorize(text, color_code); "#{color_code}#{text}\e[0m"; end
def red(text); colorize(text, "\e[31m"); end
def green(text); colorize(text, "\e[32m"); end

# Reads the yaml with the configuration of the project to get always the correct
# output_dir and initializes the validator
def setup
  @config = YAML.load_file("config.yaml")
end


# Method to validate calling to the w3c_validators methods
def validate ext
  @validator = (ext == ".css" ? CSSValidator.new : MarkupValidator.new )
  
  files(@config['output_dir'], true, ext).each do |file|
    results = @validator.validate_file(file)
    if results.errors.length > 0
        results.errors.each do |err|
          puts "\t #{red(file)} => #{err.to_s}"
        end
      else
        puts "\t #{green(file)}"
      end
  end
  
end

# From nanoc
# # Returns a list of all files in +dir+, ignoring any unwanted files (files
# that end with '~', '.orig', '.rej' or '.bak').
#
# +recursively+:: When +true+, finds files in +dir+ as well as its
#                 subdirectories; when +false+, only searches +dir+
#                 itself.

def files(dir, recursively, ext = '')
  glob = File.join([dir] + (recursively ? [ "**", "*#{ext}" ] : [ "*#{ext}" ]))
  Dir[glob].reject { |f| File.directory?(f) or f =~ /(~|\.orig|\.rej|\.bak)$/ }
end