require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(name: params[:player_one_name])
    player_2 = Player.new(name: params[:player_two_name])
    $game = Game.new(player_1, player_2)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attacked' do
    @game = $game
    @game.attack(@game.player_two)
    erb(:attacked)
  end

  run! if app_file == $0
end