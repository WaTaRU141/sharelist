class ItemsController < ApplicationController
before_action :authenticate_user!, only: :new

  def index
  	# @items = Item.all
  	@items = Item.page(params[:page]).per(20)
  end

  def show
  	# @user = current_user
  	@item = Item.find(params[:id])
    @relationship = Relationship.new
  end

  def new
  	# Item.show(item_params)
  	# redirect_to item_path
  	@user = current_user
  	@item = Item.new
  end

  def create
  	@item = Item.new(item_params)
  	# redirect_to root_path
  	@item.user_id = current_user.id
  	@item.save
  	redirect_to item_path(@item)
  end

  private
  def item_params
  	# params.require(:item).permit(item_image_attributes:[:image_url])
  	params.require(:item).permit(:name, :comment, :picture, :user_id)
  end
end
