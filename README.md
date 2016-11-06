# twitter-code-challenge

This challenge is designed to test my skills with:

* Ruby on Rails
* Object-Oriented Design
* Consuming RESTful APIs
* Git
* Cloud Deployments

This challenge took me more than 2 hours (~6 hours) to complete.

## Gems & Library choices

For this assignment I incorporated below gems:

* [devise](https://rubygems.org/gems/devise/versions/4.2.0) - user registration and authentication in rails.
* [omniauth](https://rubygems.org/gems/omniauth/versions/1.3.1) - A generalized Rack framework for multiple-provider authentication.
* [omniauth-twitter](https://rubygems.org/gems/omniauth-twitter) - OmniAuth strategy for Twitter
* [twitter](https://rubygems.org/gems/twitter) - Ruby interface to the Twitter API.
* [figaro](https://rubygems.org/gems/figaro/versions/1.1.1) - Rails app configuration using ENV and a single YAML file.

## Setting up the environment locally


## [Heroku Deployment](http://docs.railsbridge.org/intro-to-rails/deploying_to_heroku)

    heroku login
    heroku create <app-name>
    git push heroku master
    heroku run rake db:migrate
    heroku open

## Heroku Site

* [hootan-sc](https://hootan-sc.herokuapp.com)

## Test Suite Execution instructions

N/A