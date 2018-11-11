class CategoriesController < ApplicationController


    def new
      @category = Category.new(params[:id])
    end


  def create
    @store = Store.find(params[:store_id])
    @category = @store.categories.create(category_params)

    redirect_to store_path(@store)
  end


  def show
    @category = Category.find(params[:id])
    @store = Store.find(params[:store_id])
  end


  private

  def category_params
    params.require(:category).permit(:name, :image, :avatar)
  end
end
