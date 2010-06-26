class CreateFriendsJoin < ActiveRecord::Migration
  def self.up

    create_table :friends, :id=> false do |t|
      t.integer :this_user_id, :null=>false
      t.integer :this_other_user_id, :null=>false
    end

  end

  def self.down
        drop_table :friends
  end
end
