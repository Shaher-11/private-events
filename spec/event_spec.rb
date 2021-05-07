require 'rails_helper'

RSpec.describe 'Listing All the previous events', type: :system do
  describe 'index page' do
    it 'Events' do
      visit events_path
      expect(page).to have_content('Events')
    end
    it 'shows the right content' do
      visit events_path
      expect(page).to have_content('Listing All the previous events')
    end
    it 'Listing All the coming events' do
      visit events_path
      expect(page).to have_content('Listing All the coming events')
    end
  end
end
