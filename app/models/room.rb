class Room < ApplicationRecord
  validates :room, presence: true

  has_many :messages
end
