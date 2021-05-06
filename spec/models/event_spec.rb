require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'validation tests' do
    it 'should have a valid title' do
      event = Event.new(description: 'description', location: 'location', date: Date.today).save
      expect(event).to eq(false)
    end

    it 'should have a valid description' do
      event = Event.new(title: 'title', location: 'location', date: Date.today).save
      expect(event).to eq(false)
    end

    it 'should have a valid location' do
      event = Event.new(title: 'title', description: 'description', date: Date.today).save
      expect(event).to eq(false)
    end

    it 'should have a valid date' do
      event = Event.new(title: 'title', description: 'description', location: 'location').save
      expect(event).to eq(false)
    end
    it 'should save the event successfully' do
      user = User.new(title: 'title', description: 'discription', location: 'location', date: Date.today).save
      expect(user).to eq(true)
    end
  end
end