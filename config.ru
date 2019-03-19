require 'bundler/setup'
require File.expand_path('../init.rb', __FILE__)

run Rack::URLMap.new(
  ImageService::App.new
)