class Friends < ActiveRecord::Base



 validates_presence_of :user_id, :message => 'required'
 validates_presence_of :friend_id, :message => 'required'  
  validates_length_of :friend_id, :maximum=>40
  validates_length_of :user_id,:maximum=>40
  validates_length_of :request_status, :maximum=>100

end
