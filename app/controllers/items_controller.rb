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

	def edit
		@item = Item.find(params[:id])

	end

	def update
		@item = Item.find(params[:id])

		if @item.update(item_params)
			redirect_to @item
		else
			render action: 'edit'
		end
	end

	def destroy
		@item = Item.find(params[:id])

		if @item.destroy
			redirect_to action: 'index'
		else
			render action: 'show'
		end	
	end







private
	def item_params
		params.require(:item).permit(:name, :description, :price, :image_url)
		

	end

end
