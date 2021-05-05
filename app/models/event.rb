class Event < ApplicationRecord
  validates :title, :description, :location, :date, presence: true
  belongs_to :creator, class_name: 'User'
  has_many :event_users, dependent: :destroy
  has_many :users, through: :event_users, source: :user
end
