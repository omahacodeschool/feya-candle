class PagesController < ApplicationController
  skip_before_filter :require_login
  
  def home
    @contact = Contact.new
  end
  
  def volunteer
    @contact = Contact.new
  end
  
  def about
  end
  
end
