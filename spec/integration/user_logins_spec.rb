require 'rails_helper'

RSpec.feature "User Login" do
  describe "registered user can login" do
    user = User.create(name: "Sam", email: "snayrouz@gmail.com", password: "password")

    visit login_path
    fill_in "Name", with: user.name
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password

    click_button "Login"

    expect(page).to have_content("Welcome, Sam")
  end
end
