require 'rails_helper'
RSpec.describe EventUser, type: :model do
  context 'Associations' do
    it 'should have the foreign key user_id' do
      eventuser = EventUser.reflect_on_association(:user)
      expect(eventuser.foreign_key).to eq('user_id')
    end

    it 'should have the foreign key event_id' do
      eventuser = EventUser.reflect_on_association(:event)
      expect(eventuser.foreign_key).to eq('event_id')
    end

    it 'should have the user and the event' do
      @user = User.create(name: 'shaher', email: 'user@example.com', password: 'password')
      @event = @user.created_events.create(title: 'title', description: 'description', date: Date.today,
                                           location: 'location')
      @eventuser = EventUser.create(user_id: @user.id, event_id: @event.id)

      expect(EventUser.first.user).to eq(@user)
      expect(EventUser.first.event).to eq(@event)
    end
  end
end
