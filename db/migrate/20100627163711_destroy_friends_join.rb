class DestroyFriendsJoin < ActiveRecord::Migration
  def self.up
    drop_table :friends

  end

  def self.down

    create_table :friends, :id=> false do |t|
      t.integer :user_id, :null=>false
      t.integer :friend_user_id, :null=>false
    end
  end
end
