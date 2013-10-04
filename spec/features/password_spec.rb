require 'spec_helper'


describe "Reset Password" do

  before(:each) do
    User.destroy_all
    visit root_path
    click_link "Sign Up"
    fill_in "Email", :with => "jim@jimvanfleet.com"
    fill_in "Password", :with => "12345678"
    fill_in "Password confirmation", :with => "12345678"
    click_button "Sign up" 
    click_link "Sign Out" 
    click_link "Sign In"
    click_link "Forgot your password?"
    fill_in "Email", :with => "jim@jimvanfleet.com"
    click_button "Send me reset password instructions"
  end

  context "in success" do

    it "should reset password" do
      expect(page).to have_content("You will receive an email with instructions about how to reset your password in a few minutes.")
    end
  end

  context "reset email" do
    before(:each) do
      open_email('jim@jimvanfleet.com')
      current_email.click_link 'Change my password'
      fill_in "New password", :with => "87654309"
      fill_in "Confirm new password", :with => "87654309"
      click_button "Change my password"
    end

    it "the links should" do
      expect(page).to have_content("successfully")
    end

    it "new password should" do
      click_link "Sign Out"
      visit root_path
      click_link "Sign In" 
      fill_in "Email", :with => "jim@jimvanfleet.com"
      fill_in "Password", :with => "87654309"
      click_button "Sign in"
      expect(page).to have_content("successfully")
    end
  end
end