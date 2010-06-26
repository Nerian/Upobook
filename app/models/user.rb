class User < ActiveRecord::Base

  validates :name, :password, :mail, :presence => true;
  validates :mail, :uniqueness => true;
  validates :mail, :format => {:with => /^[a-z]*@[a-z]*.com$/i,
    :message => "You must insert an email in the form example@example.com"
  }

end
