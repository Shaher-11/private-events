require 'rails_helper'
RSpec.describe 'Sign In', type: :system do
  describe 'sign_in page' do
    it 'sign in' do
      visit new_user_session_path
      expect(page).to have_content('Sign In')
    end
  end
end

RSpec.describe 'Sign up', type: :system do
  describe 'sign_up page' do
    it 'sign up' do
      visit new_user_registration_path
      expect(page).to have_content('Sign up')
    end
  end
end
