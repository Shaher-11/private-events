require 'rails_helper'
RSpec.describe 'Sign In', type: :system do
  describe 'sign_in page' do
    it 'sign in' do
      visit new_user_session_path
      sleep(5)
      expect(page).to have_content('Sign In')
    end
  end

  describe 'sign_up page' do
    it 'sign up' do
      visit new_user_session_path
      sleep(5)
      expect(page).to have_content('Sign Up')
    end
  end
end
