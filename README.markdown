# Sample [Heroku](http://heroku.com) sinatra application

Meant to be used for snehta.com, but available to anyone.

## Intial computer setup.
* Create a [Heroku](http://heroku.com/signup) account.
* Setup [Heroku SSH Keys](https://devcenter.heroku.com/articles/keys)
* [Install ruby](http://www.ruby-lang.org/en/) (1.9.2 or higher)
* [Install ruby gems](http://rubygems.org/)
* [Install git] (http://git-scm.com/)
* Install bundler

    $ gem install bundler --pre


## Setup new Project
    $ git clone git@github.com:david-harkness/static-heroku-sample.git [app-name]
    $ cd app-name
    $ heroku create [optional-app-name] # (You can rename your app with `heroku rename`)
    $ git push heroku master # Deploying to Heroku
    
## Run Locally
    $ cd /path/to/app
    $ bundle install
    $ rackup
* open web browser to http://localhost:9292/

## Custom Domains
Log in to DNS provider (ie. Godaddy) and set DNS A record for root domain (**@**) to

    75.101.163.44
    75.101.145.87
    174.129.212.2

set **www** CNAME to **myapp.heroku.com**

    $ cd /path/to/app
    $ heroku config:add CANONICAL_URL=www.example.com
    $ heroku domains:add example.com
    $ heroku domains:add www.example.com

** Open browser to http://example**
It should redirect to http://www.example.com

[more info](https://devcenter.heroku.com/articles/custom-domains)

## View production logs

    $ heroku logs --tail

## Clone Existing Website
Not complete, this is for reference

    $ mkdir ~/clones
    $ ~/clones
    $ wget -m -p http://www.joyrouttpaintings.com
    $ cd www.joyrouttpaintings.com
    $ cd /path/to/app
    $ cd public
    $ cp -R ~/clones/www.joyrouttpaintings.com/js .
    $ cp -R ~/clones/www.joyrouttpaintings.com/images .
    $ cp -R ~/clones/www.joyrouttpaintings.com/css .
    $ cd /path/to/app
    $ cd views
    Copy over all html pages, rename extensions to .erb
    $ cp ~/clones//www.joyrouttpaintings.com/index.html index.erb
    edit heroku-sinatra-app.rb and add path
## Notes

This is a modified version of
* https://github.com/sinatra/heroku-sinatra-app
