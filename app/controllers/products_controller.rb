class ProductsController < ApplicationController
  
  skip_before_filter :require_login, only: [:index, :show]
  
end
