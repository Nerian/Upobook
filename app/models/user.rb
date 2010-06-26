class User < ActiveRecord::Base

  has_and_belongs_to_many :friends, :class_name => "User",
    :join_table => "friends",
    :foreign_key => "user_id",
    :association_foreign_key => "friend_user_id"

  validates :name, :password, :mail, :presence => true;
  validates :mail, :uniqueness => true;
  validates :mail, :format => {:with => /^[a-z]*@[a-z]*.com$/i,
    :message => "You must insert an email in the form 'example@example.com'"
  }

end
