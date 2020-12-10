require 'capybara' 
require 'capybara/rspec' 
require 'rspec'
require 'features/web_helpers'  

def sign_in_the_play
    visit('/')  
    fill_in :player_1_name, with: 'Dave' 
    fill_in :player_2_name, with: 'Mittens' 
    click_button 'Submit'
end