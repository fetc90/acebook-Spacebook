def sign_up_user
  visit '/users/new'
  fill_in 'user_name', with: "Lisa"
  fill_in "user_email", with: "lisa@email.com"
  fill_in "user_password", with: "Password"
  click_button "Sign Up"
end

def sign_up_another_user
  visit '/users/new'
  fill_in 'user_name', with: "Test"
  fill_in "user_email", with: "test@test"
  fill_in "user_password", with: "123"
  click_button "Sign Up"
end
