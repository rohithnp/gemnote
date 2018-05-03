class ProductsController < ApplicationController


  def index
    render json: Product.all
  end

  def show
    render json: Product.find_matches(name: params[:id])
  rescue Mongoid::Errors::DocumentNotFound
    render json: []
  end

end
