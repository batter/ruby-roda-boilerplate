ENV['RACK_ENV'] ||= 'development'

require 'rubygems'
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run the app'
end

require File.expand_path('../../app', __FILE__)
