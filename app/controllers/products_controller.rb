class ProductsController < ApplicationController
  def index
    type = params[:type] || 'wedding'
    @products = Product.send(type)
    @products = @products.sort_by { |product| product.paid? ? 1 : 0}
  end
end
