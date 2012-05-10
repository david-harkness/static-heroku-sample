# Here is a sample/template sinatra application ready for deployment to [Heroku](http://heroku.com).

## Intial computer setupSetup
* Create a[Heroku](http://heroku.com/signup) account.
* If you do not have an SSH key you'll need to [generateone](http://heroku.com/docs/index.html#_setting_up_ssh_public_keys) and [tell Heroku about it](http://heroku.com/docs/index.html#_manage_keys_on_heroku)

* [Install ruby](http://www.ruby-lang.org/en/) (1.9.2 or higher)
* [Install ruby gems](http://rubygems.org/)
* [Install git] (http://git-scm.com/)
* Install bundler

    $ gem install bundler --pre


## setup new application
    $ git clone git@github.com:david-harkness/static-heroku-sample.git [app-name]
    $ cd app-name
    $ heroku create [optional-app-name] # (You can rename your app with `heroku rename`)
    $ git push heroku master # Deploying to Heroku
    
## Run Locally
    $ cd /path/to/app
    $ bundle install
    $ rackup
* navigate to http://localhost:9292/

## Custom Domains*

    $ heroku addons:add custom_domains
    $ heroku config:add CANONICAL_URL=www.example.com
    $ heroku domains:add www.example.com

**  
**Set DNS-A record Record for root domain to**

    75.101.163.44
    75.101.145.87
    174.129.212.2
* set www CNAME to myapp.heroku.com
[more info](https://devcenter.heroku.com/articles/custom-domains)

## View production logs

    $ heroku logs --tail

## Notes

This is a modified version of
* https://github.com/sinatra/heroku-sinatra-app

