class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :event_users
  has_many :users, through: :event_users, source: :user
end
