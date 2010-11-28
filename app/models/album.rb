class Album < ActiveRecord::Base

has_many :contributers
belongs_to :user

  validates_presence_of :album_name, :message => 'required'
  validates_length_of :album_name, :maximum=>40
  validates_length_of :album_owner, :maximum=>40
  validates_length_of :album_desc, :maximum=>100


end
