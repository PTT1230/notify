class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end
  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    content = Content.find(params[:id])
    if content.destroy
      redirect_to root_path
    end
  end

  private

  def content_params
    params.require(:content).permit(:title, :media_id, :url, :week_id, :episode, :notice_id, :user_id).merge(user_id: current_user.id)
  end

end