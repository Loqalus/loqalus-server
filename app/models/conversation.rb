class Conversation < ActiveRecord::Base

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  acts_as_taggable # Alias for acts_as_taggable_on :tags
  belongs_to :user
end
