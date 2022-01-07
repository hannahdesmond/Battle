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
    $player_one = Player.new(name: params[:player_one_name])
    $player_two = Player.new(name: params[:player_two_name])
    redirect('/play')
  end

  get '/play' do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    erb(:play)
  end

  get '/attacked' do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    $player_one.attack($player_two)
    erb(:attacked)
  end

  run! if app_file == $0
end