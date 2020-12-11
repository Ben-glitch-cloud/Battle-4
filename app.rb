require 'sinatra/base' 
require File.join(File.dirname(__FILE__), '/lib/players.rb') 

class Battle < Sinatra::Base    
    
    set :session_secret, 'super secret'

    enable :sessions 

    get '/' do 
        erb :index
    end  

    post '/names' do  
        $player_1 = Player.new(params[:player_1_name]) 
        $player_2 = Player.new(params[:player_2_name]) 
        redirect '/play'
    end      

    get '/play' do
        @player_1_name = $player_1.name
        @player_2_name = $player_2.name
        erb :play
    end

    get '/fire' do 
        @player_2 = $player_2.name
        @player_1 = $player_1.name
        @player_1.attack(@player_2)
        @player
        erb :fire
    end  
end 
