class CreateAlbums < ActiveRecord::Migration
  def self.up
    create_table :albums do |t|
      t.column :album_name,            :string
      t.column :album_owner,           :string
      t.column :album_desc,            :string
      t.column :created_at,            :datetime
      t.column :updated_at,            :datetime
      end
	add_index :albums, [:album_name ,:album_owner], :unique => true
  end
  def self.down
    drop_table :albums
  end
end
