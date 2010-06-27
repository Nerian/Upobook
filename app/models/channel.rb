class Channel < ActiveRecord::Base

  validates :name, :description, :owner, :presence => true;
  
end
