class User < ActiveRecord::Base
  has_many :channel_users, :dependent => :destroy
  has_many :channels, :foreign_key => 'owner', :dependent => :destroy

  has_many :comments, :dependent => :destroy

 
  validates :name, :password, :mail, :presence => true;
  validates :mail, :uniqueness => true;
  validates :mail, :format => {:with => /^\w*@\w*.\w*$/i,
    :message => "Dirección de mail inválida"
  }

  class <<self
    def authenticate(mail, password)
      if user = find_by_mail(mail)
        user if user.password == password
      end
    end
  end
end
