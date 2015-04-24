#!/bin/bash

git clone https://github.com/railstutorial/sample_app_rails_4.git
cd sample_app_rails_4

cf create-service elephantsql turtle cf-rails-demo-pgsql
cf push cf-rails-demo -c 'bundle exec rake db:migrate && bundle exec rails s -p $PORT' --no-start --no-manifest
cf bind-service cf-rails-demo cf-rails-demo-pgsql
cf start cf-rails-demo

sleep 600

cf stop cf-rails-demo
cf unbind-service cf-rails-demo cf-rails-demo-pgsql
cf delete-service cf-rails-demo-pgsql -f
cf delete cf-rails-demo -f
