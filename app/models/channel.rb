class Channel < ActiveRecord::Base

  has_many :channel_users
  belongs_to :user, :foreign_key => "owner"

  validates :name, :description, :owner, :presence => true;
  
end
