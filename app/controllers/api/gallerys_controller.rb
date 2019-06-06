# class Api::MessagesController < ApplicationController
#     def index
#         @gallerys = Gallery.order("created_at DESC").page(params[:page]).per(8)
#         @gallery = Gallery.new
#         respond_to do |format|
#             format.html
#             format.js
#         end
#     end
    
# end