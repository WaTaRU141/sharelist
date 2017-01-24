class RequestsController < ApplicationController
  before_action :authenticate_user!, only: :new


  def index
  	@requests = Request.page(params[:page]).per(30)
  end

  def create
  	# binding.pry
  	@request = Request.new
  	@request.user_id =current_user.id
  	@request.title = params[:request][:title]
  	@request.comment =params[:request][:comment]
  	@request.save
  	redirect_to requests_path
  end

  def show
    

  end

  def new
    
  	@request = Request.new
  	@requests = current_user
  end
end

