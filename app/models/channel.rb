class Channel < ActiveRecord::Base

  has_many :channel_users, :dependent => :destroy
  belongs_to :user, :foreign_key => "owner"

  validates :name, :description, :owner, :presence => true;
  
end
