# Here is a sample/template sinatra application ready for deployment to [Heroku](http://heroku.com).


* Create an acount in seconds at [Heroku](http://heroku.com/signup).
* Install the gem `sudo gem install heroku`.
* If you do not have an SSH key
you'll need to [generate
one](http://heroku.com/docs/index.html#_setting_up_ssh_public_keys)
and [tell Heroku about
it](http://heroku.com/docs/index.html#_manage_keys_on_heroku)
* Clone this repo `https://github.com/david-harkness/static-heroku-sample [appname]`
* Clone this repo `git clone git://github.com/sinatra/heroku-sinatra-app [appname]`
* `cd /path/to/project`
* `heroku create [optional-app-name]` (You can rename your app with `heroku rename`)
* `git push heroku master`

**Setup**
* Install ruby
  * http://www.ruby-lang.org/en/ (1.9.2 or higher)
* Install git
  * http://git-scm.com/
* Install bundler
    $ gem install bundler --pre


**Development**
    $ cd /path/to/project
    $ bundle install
    $ rackup
* navigate to http://localhost:9292/

**Deployment to Heroku**
    $ git push heroku master

**Custom Domains**
* https://devcenter.heroku.com/articles/custom-domains
    $ heroku addons:add custom_domains
    $ heroku config:add CANONICAL_URL=www.example.com
    $ heroku domains:add www.example.com

**Logs**
    $ heroku logs --tail

**NOTES**

This is a modified version of
* https://github.com/sinatra/heroku-sinatra-app

