class ShareditemController < ApplicationController
	before_action :authenticate_user!
  def index
  	@shareditems = current_user.items.page(params[:page]).per(20)
  	# redirect_to shareditem_path(@shareditems)
  end

  def edit
    @item = Item.find(params[:id])
  end

  

  def show
  	@item = current_user.items.find(params[:id])
  	@holder_relationships = Relationship.where(holder_id: current_user.id).page(params[:page])
  end

  def destroy
    @item = current_user.items.find(params[:id])
    @item.destroy
    redirect_to  shareditem_index_path


  end
end
