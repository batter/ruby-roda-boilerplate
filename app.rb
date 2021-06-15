require 'roda'
require 'rack/indifferent'
require 'haml'

class App < Roda
  plugin :hooks
  plugin :render, engine: 'haml'
  plugin :json
  plugin :public
  plugin :environments
  plugin :assets, css: 'application.css', js: 'application.js', js_compressor: :uglifier

  def self.root
    @@root ||= Pathname.new(File.dirname(__FILE__))
  end

  compile_assets if production?

  # before hook runs before every request execution
  before do
    @payload = JSON.parse(request.env['rack.input'].read) rescue nil
  end

  route do |r|
    r.public
    r.assets unless ENV['RACK_ENV'] == 'production'

    # GET /
    r.root { view :index }
  end
end
