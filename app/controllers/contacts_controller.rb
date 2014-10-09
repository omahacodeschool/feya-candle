class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    
    if @contact.save
      # mailer will go here
      # send confirmation email to submitter here
      redirect_back_or_to root_path, :notice => "Your message has been sent."
    else
      redirect_to :back
    end
  end
  
  def destroy
    @contact = Contact.find_by_id(params[:id])
    @contact.destroy
    
    redirect_to contacts_path, :notice => "That contact submission has been removed"
  end
  
end