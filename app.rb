require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @Player_One_Name=params[:Player_One_Name]
    @Player_Two_Name=params[:Player_Two_Name]
    erb(:play)
  end

  run! if app_file == $0
end