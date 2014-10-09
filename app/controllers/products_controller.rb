class ProductsController < ApplicationController
  
  skip_before_filter :require_login, only: [:index, :show]
  
  def index
    @products = Product.all
    @contact = Contact.new
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(params[:product])
    
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
    redirect_to products_path, :notice => "Product deleted"
  end
  
end