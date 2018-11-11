class ProductsController < ApplicationController

    def index
      @product = Product.all
    end

    def new
      @product = Product.new(params[:id])
    end


  def create
    @category = Category.find(params[:category_id])
    @store = Store.find(params[:store_id])
    @product = @category.products.create(product_params)

    redirect_to store_category_path(@store, @category)
  end


  def show
    @category = Category.find(params[:category_id])
    @store = Store.find(params[:store_id])
    @product = Product.find(params[:id])
  end


  private

  def product_params
    params.require(:product).permit(:name, :image, :store_id, :category_id, :avatar)
  end
end
