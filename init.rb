RACK_ENV = ENV['RACK_ENV'] ||= 'development' unless defined?(RACK_ENV)
Bundler.require(:default, RACK_ENV)

db_url = "mongodb://127.0.0.1:27017"
#FileMongo = Mongo::Client.new(db_url, database: 'vote')
Mongoid.configure do |config|
  config.clients.default = {
    uri: db_url
  }
end

require './app.rb'
