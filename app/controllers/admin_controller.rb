class AdminController < ApplicationController

	before_action :find_user, only: [:destroy]
  def action
  	@users= User.all.order("created_at DESC").paginate(page: params[:page], per_page: 2) 
    authorize! :read, @users
  end

  def destroy
  	
  	@user.destroy
  	redirect_to '/links'
    authorize!  :destroy, @users
  end
  def find_user
  	@user = User.find(params[:id])
  end
  	
end
