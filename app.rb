require 'sinatra'
require 'sinatra/reloader' if development?

# get '/' do 
#   @player1 = params[:player1]
#   @player2 = params[:player2]
#   erb(:home)
# end
class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  get '/test' do
    'Testing infrastructure working!'
  end
  get '/' do
    erb :home
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end