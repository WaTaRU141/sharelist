class ItemsController < ApplicationController
before_action :authenticate_user!, only: [:new , :nearby]

  def index
  	# @items = Item.all
    # @items = Item.where('user_id != ?', current_user.try(:id)).page(params[:page]).per(20)
  	@items = Item.page(params[:page]).per(20)
    @shareditems = current_user.try(:items)#(params[:id])
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

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to shareditem_path(@item)
  end

  def nearby
    @user = current_user
    @items = Item.near([params[:item][:latitude], params[:item][:longitude]], 50)
    @hash = Gmaps4rails.build_markers(@items) do |item, marker|
      marker.lat item.latitude
      marker.lng item.longitude
      marker.infowindow item.name
      marker.json({name: item.name})
      marker.infowindow render_to_string(partial: "items/infowindow", locals: { item: item})
    end
  end
    

  private
  def item_params
  	# params.require(:item).permit(item_image_attributes:[:image_url])
  	params.require(:item).permit(:name, :comment, :picture, :user_id)
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:address, :latitude, :longitude, :perfect_address)
    end

