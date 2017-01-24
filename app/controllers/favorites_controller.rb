class FavoritesController < ApplicationController
	before_action :authenticate_user!
  def index
  end

  def create
  	@favorite = current_user.favorites.new(item_id: params[:item_id])
  	if @favorite.save
  		redirect_to items_url, notice: "お気に入りに登録しました"
  	else
  		redirect_to items_url, alert: "エラーが発生しました"
  	end
  end

  def destroy
  	@favorite = current_user.favorites.find_by(item_id: params[:item_id])
  	@favorite.destroy
  	redirect_to items_url, notice: "お気に入りを解除しました"
  end
end
