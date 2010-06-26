class User < ActiveRecord::Base

  has_and_belongs_to_many :friends, :class_name => "User",
    :foreign_key => "this_user_id",
    :association_foreign_key => "other_user_id"

  validates :name, :password, :mail, :presence => true;
  validates :mail, :uniqueness => true;
  validates :mail, :format => {:with => /^[a-z]*@[a-z]*.com$/i,
    :message => "You must insert an email in the form 'example@example.com'"
  }

end
