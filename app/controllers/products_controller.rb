class ProductsController < ApplicationController
  
  skip_before_filter :require_login, only: [:index, :show]
  
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new
    
    if @product.save
      redirect_to product_path(@product.id), :notice => "Product created."
    else
      render "new"
    end
  end
  
  def edit
    @product = Product.find_by_id(params[:id])
  end
  
  def update
    @product = Product.find_by_id(params[:id])
    
    if @product.update_attributes(params[:product])
      redirect_to product_path(@product.id), :notice => "Product updated."
    else
      render "edit"
    end
  end
  
  def show
    @product = Product.find_by_id(params[:id])
  end
  
  def destroy
    @product = Product.find_by_id(params[:id])
    @product.destroy
  end
  
end