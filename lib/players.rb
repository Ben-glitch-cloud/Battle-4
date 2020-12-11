require 'sinatra/base'

class Player

    attr_reader :name
    attr_reader :health
    DEFAULT_HIT_POINTS = 60

    def initialize(name, health = DEFAULT_HIT_POINTS)
        @name = name
        @health = health
    end   

    def attack
        @health -= 10
    end

end 
