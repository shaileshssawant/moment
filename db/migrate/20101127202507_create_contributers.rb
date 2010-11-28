class CreateContributers < ActiveRecord::Migration
  def self.up
    create_table :contributers do |t|
	t.column :album_id, :integer
	t.column :user_id,    :integer
    end
	
  end

  def self.down
    drop_table :contributers
  end
end
