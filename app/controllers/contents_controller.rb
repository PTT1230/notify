class ContentsController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @contents = Content.includes(:user).order('created_at DESC')
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
    redirect_to root_path if content.destroy
  end

  def edit
    @content = Content.find(params[:id])
    
  end

  def update
    @content = Content.find(params[:id])
    if @content.update(content_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def content_params
    params.require(:content).permit(:title, :media_id, :url, :week_id, :episode,
                                    :notice_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
