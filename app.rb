require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_one_name = params[:player_one_name]
    $player_two_name = params[:player_two_name]
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attacked' do
    erb(:attacked)
  end

  run! if app_file == $0
end