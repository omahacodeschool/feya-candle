class PagesController < ApplicationController
  skip_before_filter :require_login
  
  def home
  end
  
  def volunteer
  end
  
  def stores
  end
  
  def about
  end
  
end
