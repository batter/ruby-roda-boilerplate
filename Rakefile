require 'rubygems'
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

desc 'Open an irb session preloaded with this library'
task :console do
  sh 'irb -I lib -r ./app.rb'
end

namespace :assets do
  desc "Precompile the assets"
  task :precompile do
    require './app'
    App.compile_assets
  end

  task :clean do
    system 'rm public/assets/*.css'
    system 'rm public/assets/*js'
  end
end
