require 'spec_helper'

describe 'testing the BBC' do
  context 'testing login' do
    it 'should respond with success when we login with a valid email and password' do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_login.fill_email
      # @bbc_site.bbc_login.fill_password
      @bbc_site.bbc_login.click_submit

    end

    it "should display error message when user signs in without email" do
      @bbc_site = BBC_Site.new
      expect(@bbc_site.bbc_login.get_username_status).not_to eq("")
      expect(@bbc_site.bbc_login.get_username_status).not_to eq(" ")
    end

    it "should display error message when user signs in without password" do
      @bbc_site = BBC_Site.new
      expect(@bbc_site.bbc_login.get_password_status).not_to eq("")
      expect(@bbc_site.bbc_login.get_password_status).not_to eq(" ")
    end
  end
end
