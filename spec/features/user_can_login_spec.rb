require 'rails_helper'

describe 'login' do
  it 'can log users in' do
    username = "jordan15"
    visit '/'

    expect(current_path).to eq(new_user_path)

    fill_in :user_username, with: username
    fill_in :user_password, with: "123456"

    click_on "Login"

    expect(page).to have_content("Welcome, #{username}!")
  end
end
