class AlbumController < ApplicationController

def new
@album = Album.new
respond_with @album
end

def create
 @album = Album.create(params[:album])
 @album.save
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
