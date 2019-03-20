require 'bundler/setup'
require File.expand_path('../init.rb', __FILE__)

run ImageService::App.new
