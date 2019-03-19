module ImageService
  class App < Sinatra::Application
    use Rack::Thumb
    get '/' do
      'hello world'
    end
    use Rack::GridFS, {
      :prefix => 'image',
      :db => FileMongo,
      :expires => 30*24*3600,
      :mapper => lambda {|path| %r{^/image/(\w+)/.*}.match(path)[1]}
    }

    not_found do
      '404'
    end

    error do
      '500'
    end


  end

end

