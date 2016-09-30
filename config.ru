require 'rubygems'
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run the app'
end

require 'sass/plugin/rack'
require_relative 'app'

# use scss for stylesheets
Sass::Plugin.options[:style] = :compressed
Sass::Plugin.options[:css_location] = App.root.join('assets', 'css').to_s
use Sass::Plugin::Rack

run App
