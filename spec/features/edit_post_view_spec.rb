require 'rails_helper'

RSpec.feature 'Edit Post', type: :feature do
  scenario 'Can edit a single post' do
    sign_up_user
    sign_in_user
    visit('/posts')
    click_link 'New post'
    fill_in 'Message', with: 'Hello, world!'
    click_button 'Submit'

    click_link 'Edit'
    fill_in 'Message', with: 'Hello, space universe!'
    click_button 'Submit'

    expect(page).to have_content('Hello, space universe!')
  end

  scenario 'Error message if signed in user did not create that post' do
    sign_up_user
    sign_in_user
    visit('/posts')
    click_link 'New post'
    fill_in 'Message', with: 'Hello, world!'
    click_button 'Submit'

    sign_up_another_user
    sign_in_another_user
    click_link('Edit')
    expect(page).to have_content("You cannot edit other user's posts")
  end
end
