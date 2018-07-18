require 'spec_helper'

describe 'Testing the BBC Registration' do

  context 'initial user journey signing up' do
    xit 'should take us through the correct registration process with valid details' do
      @bbc_site = BBC_Site.new
      # Go and get new email
      @bbc_site.get_temp_email.visit_minute_inbox
      email = @bbc_site.get_temp_email.get_email

      # Start reg process
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_homepage.click_reg
      @bbc_site.bbc_registration.click_13_or_over
      @bbc_site.bbc_registration.fill_in_dob
      @bbc_site.bbc_registration.click_dob_button

      @bbc_site.bbc_registration.fill_in_email(email)
      @bbc_site.bbc_registration.get_postcode
      @bbc_site.bbc_registration.select_gender
      @bbc_site.bbc_registration.click_opt_out
      @bbc_site.bbc_registration.submit_reg
      # expect(@bbc_site.bbc_registration.verify_registration).to be true
      # expect(@bbc_site.bbc_registration.verify_registration).to be true

    end
  end

end
