# You'll need to require these if you
# want to develop while running with ruby.
# The config/rackup.ru requires these as well
# for it's own reasons.
#
# $ ruby heroku-sinatra-app.rb
#
require 'rubygems'
require 'sinatra'
require "sinatra/reloader" if development? #http://www.sinatrarb.com/contrib/reloader

configure :production do
  # Configure stuff here you'll want to
  # only be run at Heroku at boot

end

# Cache pages for 12 hours on heroku
# Update code will clear heroku's cache
# Users may need to do a hard refresh to see new content
# Warning, if updating an image, but a ?md5sum=XXXXX at the end of the image to ensure new image is shown
before do
  if ENV['RACK_ENV'] == 'production'
    time = 3600 * 12 # 12 hours
    response['Cache-Control'] = "public, max-age=#{time.to_i}"
  end
end

# Quick test
get '/' do
  erb :index
end

# Test at <appname>.heroku.com

# You can see all your app specific information this way.
# IMPORTANT! This is a very bad thing to do for a production
# application with sensitive information

# get '/env' do
#   ENV.inspect
# end
