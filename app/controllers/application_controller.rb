class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_search_near_item
  
  private
  def set_search_near_item
  	@item = Item.new
  end
end
