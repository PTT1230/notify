class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end
  def new
    @content = Content.new
    @week = Week.all
    @media = Media.all
    @notice = Notice.all
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def content_params
    params.require(:content).permit(:title, :media_id, :url, :week_id, :episode, :notify_id, :user_id).merge(user_id: current_user.id)
  end

end