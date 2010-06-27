class Channel < ActiveRecord::Base

  has_many :channel_users

  validates :name, :description, :owner, :presence => true;
  
end
