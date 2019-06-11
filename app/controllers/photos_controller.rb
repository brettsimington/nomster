class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create

    @place = Place.photos.find(params[:picture])
    puts @place
    @place.captions.create(comment_params.merge(caption: current_user))
    puts @place
    redirect_to place_path(@place)
  end

  private

  def photo_params
    params.require(:picture).permit(:caption)
  end
end