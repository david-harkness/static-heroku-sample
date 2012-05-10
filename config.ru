require './heroku-sinatra-app'
require 'rack-rewrite'

if ENV['CANONICAL_URL']
  DOMAIN = ENV['CANONICAL_URL']
  # Redirect to the www version of the domain in production
  use Rack::Rewrite do
    r301 %r{.*}, "http://#{DOMAIN}$&", :if => Proc.new {|rack_env|
      rack_env['SERVER_NAME'] != DOMAIN && ENV['RACK_ENV'] == "production"
    }
  end
end
## There is no need to set directories here anymore;
## Just run the application

run Sinatra::Application