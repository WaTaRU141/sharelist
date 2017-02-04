class MatchingsController < ApplicationController
  before_action :authenticate_user!
  def resouces
  end

  def index
   
  
  end

  def create
  end

  def show
    # @relationship = Relationship.where(holder_id: :current_user.id, request_user_id: :current_user.id)
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
