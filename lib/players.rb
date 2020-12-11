require 'sinatra/base'

class Player
    DEFAULT_HIT_POINTS = 60
    attr_reader :name, :health

    def initialize(name, health = DEFAULT_HIT_POINTS)
        @name = name
        @health = health
    end   

    def attack(player)
        player.receive_damage
    end
    
    def receive_damage
        @health -= 10
    end

end 
