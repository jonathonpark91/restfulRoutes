class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)

		if @item.save
			redirect_to item_path(@item)
			# or just redirect_to @item
		else
			render action: 'new'
		end
	end

	def show
		@item = Item.find(params[:id])
	end








	
private
	def item_params
		params.require(:item).permit(:name, :description, :price, :image_url)
		

	end

end
