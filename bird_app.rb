require 'sinatra/base'

class BirdApp < Sinatra::Application
  get '/' do
    erb :index
  end

  post '/' do
    params[:bird_added]
  end

end