class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		product = Product.new(params[:product].permit(:title, :description, :price, :user_id))
		product.user = current_user
		product.save
		redirect_to '/products'
	end

	def show
		@product = Product.find params[:id]
	end

	def search
		@products = Product.where("title ILIKE ? OR description ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
		render 'index'
	end

end
