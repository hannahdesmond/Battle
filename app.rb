require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player.rb'

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

  # post # hit points
  # redirect to get attacked?

  get '/attacked' do
    erb(:attacked)
  end

  run! if app_file == $0
end