class AlbumController < ApplicationController

def new
	# check wheter user is logged in or not
	@album = Album.new
end

def create
	@album = Album.create(params[:album])
	#find whether the album name and owner sane is in the album table or not....... if not insert it otherwise display error msg that album name is exists for the current user
	@album.save
	#at the same time create a directory under that username/albumname physically 
end

def update
	@album = Album.find(params[:id])
	
	begin
	Album.transaction do
	@album.update_attributes(params[:album])
	end

	rescue ActiveRecord::RecordInvalid => e
	puts "ERROR: we need to let the user know!"
	return
end

redirect_to @album
end

def delete

end

def read

end

end
