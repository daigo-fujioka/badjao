class GallerysController < ApplicationController
 def index
    @gallerys = Gallery.all
   #  .page(params[:page]).per(8)
    @gallery = Gallery.new
   
 end
 def create
    @gallery = Gallery.create(gallery_params)

 end
 private
 def gallery_params
    params.require(:gallery).permit(:image)
 end
end
