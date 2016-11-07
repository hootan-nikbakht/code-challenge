# twitter-code-challenge

This challenge is designed to test my skills with:

* Ruby on Rails
* Object-Oriented Design
* Consuming RESTful APIs
* Git
* Cloud Deployments

This challenge took me more than 2 hours (~6 hours) to complete.

## Design & Library choices

Following instructions of this challenge, I broked down this assignment in parts:

1. Created a twitter authentication layer that allows seamless login with twitter omniauth api
2. Included twitter library to consume twitter api. Created a class models/tweet.rb, which acts as a tweet object holding required field for the view.
3. Deployed application to Heroku by following a [basic tutorial](http://docs.railsbridge.org/intro-to-rails/deploying_to_heroku).
4. Cached identical API handle query calls for 5 minutes to avoid hammering the Twitter API. Incorporated [Rails built-in](http://guides.rubyonrails.org/caching_with_rails.html) Cache API & memory cache_store.
5. Setup rspec-rails gem & implemented two negative test cases.
6. Bug fixing & clean up.

Incorporated the following gems:

* [omniauth](https://rubygems.org/gems/omniauth/versions/1.3.1) - A generalized Rack framework for multiple-provider authentication.
* [omniauth-twitter](https://rubygems.org/gems/omniauth-twitter) - OmniAuth strategy for Twitter
* [twitter](https://rubygems.org/gems/twitter) - Ruby interface to the Twitter API.
* [figaro](https://rubygems.org/gems/figaro/versions/1.1.1) - Rails app configuration using ENV and a single YAML file.
* [rspec-rails](https://rubygems.org/gems/rspec-rails/versions/3.4.2) - rspec-rails is a testing framework for Rails.
* [rails_12factor](https://rubygems.org/gems/rails_12factor/versions/0.0.3) - Warning while deploying recommended by Heroku

## Setting up the environment locally

    git clone https://github.com/hootan-nikbakht/code-challenge.git
    cd code-challenge
    bundle install
    rake db:migrate
    rails s

## [Heroku Deployment](http://docs.railsbridge.org/intro-to-rails/deploying_to_heroku)

    heroku login
    heroku create <app-name>
    git push heroku master
    heroku run rake db:migrate
    heroku open

## Heroku Site

[https://hootan-sc.herokuapp.com](https://hootan-sc.herokuapp.com)

## Test Suite Execution instructions

    rake spec