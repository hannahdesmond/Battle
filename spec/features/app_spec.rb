=begin
feature 'feature' do
    scenario 'should be working' do
        visit('/')
        expect(page).to have_content('Testing Infrastructure Working!')
    end
end
=end
feature 'name submission' do
  scenario 'players fill in names, seen on screen' do
    visit('/')
    fill_in 'Player_One_Name', with: 'Joy'
    fill_in 'Player_Two_Name', with: 'Hannah'
    click_button('Submit')
    expect(page).to have_content('Player 1: Joy, Player 2: Hannah')
  end
end

