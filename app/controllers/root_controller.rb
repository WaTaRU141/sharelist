class RootController < ApplicationController
  def index
  	@locations = Location.new
  end
end
