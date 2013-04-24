require 'sinatra'
require 'sass'
require 'compass'

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views/scss'
  end

  set :sass, Compass.sass_engine_options
  set :scss, Compass.sass_engine_options
end

get '/' do
  erb :index, :locals => {:bootstrap => false}
end

get '/bootstrap' do
  erb :index, :locals => {:bootstrap => true}
end

# interpret anything in views/scss file as scss
get '/stylesheets/:name.css' do
  scss :"stylesheets/#{params[:name]}"
end
