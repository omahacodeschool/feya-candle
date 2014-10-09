class Contact < ActiveRecord::Base
  attr_accessible :company, :email, :message, :name, :phone, :category
  
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :message, presence: true
  validates :category, presence: true

  def send_inquiry_mailers(contact)
    @contact = contact
    
    if @contact.category == "wholesale"
      
      ContactMailer.wholesale_inquiry(@contact).deliver
      ContactMailer.sent_wholesale_inquiry(@contact).deliver
      
    elsif @contact.category == "volunteer"
      
      ContactMailer.volunteer_inquiry(@contact).deliver
      ContactMailer.sent_volunteer_inquiry(@contact).deliver
      
    elsif @contact.category == "suggest"
      
      ContactMailer.suggest_inquiry(@contact).deliver
      ContactMailer.sent_suggest_inquiry(@contact).deliver
      
    end
  end


end
