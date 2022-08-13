# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @contents = user.contents
  end
end
