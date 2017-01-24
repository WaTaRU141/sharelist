class SharedUsersController < ApplicationController
	before_action :authenticate_user!
  def index
  	@inverse_holders_relationships = Relationship.where(request_user_id: current_user.id).page(params[:page])
  	end
end