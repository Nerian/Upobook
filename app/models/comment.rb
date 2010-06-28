class Comment < ActiveRecord::Base

  validates :channel_id, :user_id, :message, :presence => true
end
