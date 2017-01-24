class ItemImagesController < ApplicationController
  def new
  	# @item_image = Item_image.new(create_params)
  	@item_image = Thumbnails.new(create_params)
  	4.times { @item_image.thumbnails.build }
  end

  private
  def create_params
  	params.require(:item_image).permit(thumbnails_attributes:[:image])
end
