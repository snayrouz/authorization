require 'rails_helper'

RSpec.feature "User logout" do
  describe "loggedin user logs out" do
    it "logs out at anytime" do
      user = User.create(name: "Sam", email: "snayrouz@gmail.com", password: "password")

      visit login_path

      fill_in "Name", with: user.name
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password

      click_button "Login"

      expect(page).to have_content("Welcome, Sam")

      click_link "Logout"

      expect(page).to_not have_content("Welcome, Sam")
    end
  end
end
