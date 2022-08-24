class ProductsController < ApplicationController
  def index
    @products = Product.all.sort_by { |product| product.paid? ? 1 : 0}
  end
end
