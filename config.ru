require File.expand_path('../config/environment', __FILE__)
require 'sass/plugin/rack'

# use scss for stylesheets
Sass::Plugin.options[:style] = :compressed
Sass::Plugin.options[:css_location] = App.root.join('assets', 'css').to_s
use Sass::Plugin::Rack

run App
