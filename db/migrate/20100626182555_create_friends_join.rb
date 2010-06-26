class CreateFriendsJoin < ActiveRecord::Migration
  def self.up

    create_table :friends, :id=> false do |t|
      t.integer :user_id, :null=>false
      t.integer :friend_user_id, :null=>false
    end

  end

  def self.down
        drop_table :friends
  end
end
