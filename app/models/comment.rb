class Comment < ActiveRecord::Base

  belongs_to :channel
  belongs_to :user
  
  validates :channel_id, :user_id, :message, :presence => true
  #validates_length_of :message, :in => 1..50
end
