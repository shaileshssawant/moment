class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
	t.column :photo_id,    :integer
	t.column :photo_name,  :string
	t.column :photo_description
	t.column :photo_comment, :string
     end
  end

  def self.down
    drop_table :photos
  end
end
