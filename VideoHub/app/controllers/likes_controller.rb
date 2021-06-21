class LikesController < ApplicationController
  def create
    @like = Like.new
    @like.user = current_user
    @like.video = Video.find(params[:video_id])
    if @like.save
      respond_to do |format|
        format.html { redirect_to @like.video }
        format.js
      end
    end
  end

  def destroy
  end

end
