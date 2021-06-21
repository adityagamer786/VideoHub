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
    @like = Like.find_by user_id: current_user.id, video_id: params[:video_id]
    if @like.destroy
      respond_to do |format|
        format.html { redirect_to @like.video }
        format.js
      end
    end
  end

end
