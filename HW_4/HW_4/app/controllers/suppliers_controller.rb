class SuppliersController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
    # def index
    #   @product = Product.all
    # end

    def new
      @supplier = Supplier.new(params[:id])
    end


  def create
    @store = Store.find(params[:store_id])
    @product = Product.find(params[:product_id])
    @category = Category.find(params[:category_id])
    @supplier = @product.suppliers.create(supplier_params)

    redirect_to store_category_product_path(@store, @category, @product)
  end


  def show
    @store = Store.find(params[:store_id])
    @product = Product.find(params[:product_id])
    @category = Category.find(params[:category_id])
    @supplier = Supplier.find(params[:id])
  end


  private

  def supplier_params
    params.require(:supplier).permit(:name, :image, :store_id, :category_id, :product_id, :avatar)
  end
end
