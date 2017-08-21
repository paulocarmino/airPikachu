class PhotosController < ApplicationController

  def create
    @room = Room.find(params[:room_id])

    if params[:images]
      params[:images].each do |img|
        @room.photos.create(image: img)
      end

      @photos = @room.photos
      redirect_back(fallback_localtion: request.referer, notice: "Saved...")
    end

  end
end
