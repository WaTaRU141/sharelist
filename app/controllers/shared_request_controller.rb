class SharedRequestController < ApplicationController
	before_filter :authenticate_user!
  def index
  	@requests = current_user.requests.page(params[:page]).per(20)
  end
end
