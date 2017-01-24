class RelationshipsController < ApplicationController
	before_action :authenticate_user!

	def create
		@item = Item.find(params[:item_id])
		relationship = Relationship.new(relationship_params)
		relationship.holder_id = @item.user.id
		relationship.request_user_id = current_user.id
		relationship.item_id = @item.id
		

		
		if relationship.save!(:validate => false)
			redirect_to item_url(@item), notice: "申請しました"
		else
			redirect_to item_url(@item), alert: "エラーがでました"
			puts 'できてない'
		end
	end

	def update
		@relationship = Relationship.find(params[:id])
		#@holder_relationship = Relationship.where(holder_id: current_user.id).where(request_user_id: @relationship.request_user_id).where(item_id: @relationship.item_id)
        #@relationship.toggle(:accept)

        @relationship.accept = true
        if @relationship.save!(:validate => false)
        	redirect_to root_path
        else
        	puts "#{@relationship.id}ほぞんされていない"
    	end
	end

	private
	def relationship_params
		params.require(:relationship).permit(:comment)
	end

end
