require './spec/features/web_helpers.rb'

feature 'Enter names' do 
    scenario 'Display players' do 
        sign_in_the_play  
        expect(page).to have_content 'Dave vs. Mittens'
    end
end 

feature 'Hit points' do
    scenario 'display hit points from player two' do
        sign_in_the_play
        expect(page).to have_content 'Mittens 60 points' 
    end
end  

feature 'attack player 2' do 
    scenario 'should confirm attack' do  
        sign_in_the_play
        click_button 'fire'
        expect(page).to have_content 'Hite'
    end 
end 


