class CommentsController < ApplicationController
  def create
    @video = Video.find(params[:video_id])
    @comment = @video.comments.new(params[:comment].permit(:user_id, :body))
    @comment.user_id = current_user.id
    @comment.save
    redirect_to video_path(@video)
  end

  def destroy
    @video = Video.find(params[:video_id])
    @comment = @video.comments.find(params[:id])
    @comment.destroy
    redirect_to video_path(@video)
  end
end
