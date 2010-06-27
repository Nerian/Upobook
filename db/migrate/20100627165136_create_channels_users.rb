class CreateChannelsUsers < ActiveRecord::Migration
  def self.up
    drop_table :channel_users
    create_table :channels_users do |t|
      t.integer :channel_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :channels_users
    create_table :channel_users do |t|
      t.integer :channel_id
      t.integer :user_id

      t.timestamps
    end
  end

end
