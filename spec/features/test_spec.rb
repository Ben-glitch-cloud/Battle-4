feature 'Enter names' do
    scenario 'Display players' do
        visit('/')  
        fill_in :player_1_name, with: 'Dave' 
        fill_in :player_2_name, with: 'Mittens' 
        click_button 'Submit'
        expect(page).to have_content 'Dave vs. Mittens'
    end
end 

feature 'Hit points' do
    scenario 'display hit points from player two' do
        visit('/')   
        fill_in :player_1_name, with: 'Dave' 
        fill_in :player_2_name, with: 'Mittens' 
        click_button 'Submit'
        expect(page).to have_content 'Mittens 60 points' 
    end
end