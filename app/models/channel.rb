class Channel < ActiveRecord::Base

  has_many :channel_users, :dependent => :destroy
  has_many :users, :through => :channel_users
  belongs_to :user, :foreign_key => "owner"
  has_many :comments, :dependent => :destroy

  validates :name, :description, :owner, :presence => true;

  
  def comments_since_user_conected(user_id)
    self.comments.where(:created_at => (User.find(user_id).channel_users.first.created_at)..(Time.now))
  end
end
