class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true

  def self.generate
    adjectives = ['Ancient', 'Creative', 'Dangerous', 'Effective', 'Flying', 'Gilded']
    nouns = ['Highway', 'Intern', 'Jackhammer', 'Lion', 'Master']
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end
end
