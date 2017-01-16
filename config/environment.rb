ENV['RACK_ENV'] ||= 'development'

require 'rubygems'
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run the app'
end

require 'json'
require 'mongoid'
Mongoid.load!(File.expand_path('../mongoid.yml', __FILE__))

require File.expand_path('../../app', __FILE__)
