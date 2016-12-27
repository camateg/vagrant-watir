#!/bin/bash

cd /vagrant/tests && gem install bundler && bundle install && xvfb-run -s "-screen 0 1024x768x16" rspec levi_rtest.rb
