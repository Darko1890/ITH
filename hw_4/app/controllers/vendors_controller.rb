class VendorsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
    # def index
    #   @product = Product.all
    # end

    def new
      @vendor = Vendor.new(params[:id])
    end

def create
  @store = Store.find(params[:store_id])
  @category = Category.find(params[:category_id])
  @product = Product.find(params[:product_id])
  @supplier = Supplier.find(params[:supplier_id])

  @vendor = @supplier.vendors.create(vendor_params)
  redirect_to store_category_product_supplier_path(@store, @category, @product, @supplier)
end

def show
  @store = Store.find(params[:store_id])
  @product = Product.find(params[:product_id])
  @category = Category.find(params[:category_id])
  @supplier = Supplier.find(params[:supplier_id])

  @vendor = Vendor.find(params[:id])
end


  private

  def vendor_params
    params.require(:vendor).permit(:name, :image, :store_id, :category_id, :product_id, :supplier_id, :avatar)
  end
end
