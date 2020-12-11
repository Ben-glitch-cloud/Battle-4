require 'sinatra/base' 

require 'players.rb'

class Battle < Sinatra::Base    
    
    set :session_secret, 'super secret'

    enable :sessions 

    get '/' do 
        erb :index
    end  

    post '/names' do  
        
        $player_1_name = Player.new(params[:player_1_name]) 
        $player_2_name = Player.new(params[:player_2_name]) 

        redirect '/play'
    end      

    get '/play' do
        @player_1_name = $player_1_name.name
        @player_2_name = $player_2_name.name
        erb :play
    end

    get '/fire' do 
        erb :fire
    end  
end 
