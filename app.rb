require 'gridfs_new'
module ImageService
  class App < Sinatra::Application
    use Rack::Thumb
    get '/' do
      'hello world'
    end

    use Rack::GridFSNew, {
      :prefix => 'image',
      :db => FileMongo.database
     }

    not_found do
      '404'
    end

    error do
      '500'
    end


  end
end


