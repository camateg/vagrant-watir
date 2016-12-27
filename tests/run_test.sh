#!/bin/bash

xvfb-run -s "-screen 0 1024x768x16" rspec gimage_rtest.rb
