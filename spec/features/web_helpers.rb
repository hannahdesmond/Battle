def sign_in_and_play
  visit('/')
  fill_in 'player_one_name', with: 'Joy'
  fill_in 'player_two_name', with: 'Hannah'
  click_button('Submit')
end