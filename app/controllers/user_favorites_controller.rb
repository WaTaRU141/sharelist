class UserFavoritesController < ApplicationController
before_action :authenticate_user!
	def index
		@user = current_user.favorites.page(params[:page]).per(20)
		# Current_user.favorites.page(params[:page]).per(20)
	end
end
