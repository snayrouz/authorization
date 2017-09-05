require 'rails_helper'

RSpec.feature "User" do
  describe "User visits main page" do
    it "a user can be created" do

      visit new_user_path

      fill_in "Name", with: "Sam"
      fill_in "Email", with: "snayrouz@gmail.com"
      fill_in "Password", with: "password"
      click_button "Create Account"

      expect(page).to have_content("Welcome, Sam")
    end
  end
end
