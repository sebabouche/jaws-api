class ProductsController < ApplicationController
  respond_to :json

  def index
    @products = Product.all
    render json: @products, status: 200
  end
end
