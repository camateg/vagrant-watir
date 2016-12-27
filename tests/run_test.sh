#!/bin/bash

cd /vagrant && gem install bundler && bundle install && cd /vagrant/tests && xvfb-run -s "-screen 0 1024x768x16" rspec gimage_rtest.rb
