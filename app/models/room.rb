class Room < ApplicationRecord
  validates :room, presence: true
end
