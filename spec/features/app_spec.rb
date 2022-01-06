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
    fill_in 'player_one_name', with: 'Joy'
    fill_in 'player_two_name', with: 'Hannah'
    click_button('Submit')
    expect(page).to have_content('Player 1: Joy, Player 2: Hannah')
  end
end

feature 'hit points' do
  scenario "see player 2's hit points" do
    visit('/')
    fill_in 'player_one_name', with: 'Joy'
    fill_in 'player_two_name', with: 'Hannah'
    click_button('Submit')
    expect(page).to have_content("30HP")
  end
end

