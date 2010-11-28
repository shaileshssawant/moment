class CreateFriends < ActiveRecord::Migration
  def self.up
    create_table :friends do |t|
      t.column :user_id,         :integer, :null => false
      t.column :friend_id,        :integer, :null => true
      t.column :request_status,    :string 
      
    end
  end

  def self.down
    drop_table :friends
  end
end
