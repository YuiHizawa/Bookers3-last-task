class UsersController < ApplicationController
  def show
  	@user = User.find(id:params[:id])
  end

  def index
  	@users = User.all
  end
end
