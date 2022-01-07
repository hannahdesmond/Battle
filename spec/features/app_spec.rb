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
    sign_in_and_play
    expect(page).to have_content('Joy')
    expect(page).to have_content('Hannah')
  end
end

feature 'play' do
  scenario "see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("30HP")
  end
  scenario 'can attack player 2 and get confirmation' do
    sign_in_and_play
    click_button("Attack Player 2")
    expect(page).to have_content("Player 1 attacked player 2")   
    # post route for play to
    # or new get route to get additional text. Have 
    # a look a previous routes including cat project.
  end
end



