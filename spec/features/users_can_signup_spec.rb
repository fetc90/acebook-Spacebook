 require 'rails_helper'

RSpec.feature "Signup", type: :feature do
  scenario "sign up page has name, email and password fields" do
    visit '/users/new'
    p "Hello"
    fill_in 'user_name', with: "Lisa"
    fill_in "user_email", with: "lisa@email.com"
    fill_in "user_password", with: "Password"
    click_button "Sign Up"
    expect(page).to have_content("Welcome to Spacebook!")
  end
end
