class StaticPagesController < ApplicationController
  def home
    @flickr = FlickRaw::Flickr.new
    if params[:search]
      unless params[:search][:user_id].blank?
        @photos = flickr.photos.search(user_id: params[:search][:user_id])
      end
    end
  end

  private
    def search_params
      params.require(:search).permit(:user_id)
    end
end
