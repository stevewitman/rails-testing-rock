class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :privacy, presence: true
  
  enum privacy: [:public_access, :private_access, :friends_access]
end
