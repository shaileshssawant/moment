class Photo < ActiveRecord::Base

belongs_to :album

validates_presence_of :photo_name,  :message => 'required'
validates_length_of :photo_name,:maximum => 40
validates_length_of :photo_description, :maximum=>100
validates_length_of :photo_comment, :maximum=>100

end
