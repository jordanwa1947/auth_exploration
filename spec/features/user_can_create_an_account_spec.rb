require 'rails_helper'

describe 'create_an_account' do
  it 'can create an account for users' do
    username = "jordan15"
      visit '/'

      click_on "Sign Up to Be a User"

      expect(current_path).to eq(new_user_path)

      fill_in "Name", with: username
      fill_in "Email", with: "jordanwa1947@gmail.com"
      fill_in "Password", with: '123456'

      click_on "Create User"

      expect(page).to have_content("Welcome, #{username}!")
    end
  end
