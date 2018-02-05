class LinksController < ApplicationController
  load_and_authorize_resource
	before_action :find_link, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :show] 
  def index
  	@links= Link.all.order("created_at DESC").paginate(page: params[:page], per_page: 2) 
  end

  def new
  	@link= current_user.links.build
  end

  def show
  	
  end 

  def edit
  	
  end 

  def update
  	
  	if @link.update_attributes(link_params)
  		redirect_to(:action =>'show', :id => @link.id)
  	else
  		render 'edit'
  	end
  end

  def destroy
  	
  	@link.destroy
  	redirect_to '/links'
  end



  def create
  	@link = current_user.links.build(link_params)
  	if @link.save
  		redirect_to '/links'
  	else
  		render 'new'
  	end
  end 

  def find_link
  	@link = Link.find(params[:id])
  end

  	private 
  	def link_params 
    	 params.require(:link).permit(:name, :url, :image) 
  	end
end
