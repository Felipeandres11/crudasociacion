class ProductsController < ApplicationController

def create
  @product = Product.new(product_params)
  if @product.save
    redirect_to category_path(@product.category)
  end

end

def destroy
  Product.destroy(params[:id])
  redirect_to category_path(params[:category_id])

end






  private
  def product_params
    params.require(:product).permit(:name, :price, :category_id)
  end
end
