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
    expect(page).to have_content("60HP")
  end
  scenario 'can attack player 2 and get confirmation' do
    sign_in_and_play
    click_button("Attack Player 2")
    expect(page).to have_content("Player 1 attacked player 2")   
  end
  scenario 'reduce player 2 HP by 10HP' do
    sign_in_and_play
    click_button("Attack Player 2")
    click_button("Play More")
    expect(page).to have_content("50HP")
  end
end



