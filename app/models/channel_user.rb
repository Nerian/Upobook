class ChannelUser < ActiveRecord::Base
  belongs_to :channel
  belongs_to :user

  validates :channel_id, :user_id, :presence => true;
end
