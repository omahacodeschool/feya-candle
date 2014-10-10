class Contact < ActiveRecord::Base
  attr_accessible :company, :email, :message, :name, :phone, :category
  
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :message, presence: true
  validates :category, presence: true


  # Determines which set of mailers to send by evaluating the Contact's category
  def send_inquiry_mailers
    @contact = self
    
    if category == "wholesale"
      
      ContactMailer.wholesale_inquiry(@contact).deliver
      ContactMailer.sent_wholesale_inquiry(@contact).deliver
      
    elsif category == "volunteer"
      
      ContactMailer.volunteer_inquiry(@contact).deliver
      ContactMailer.sent_volunteer_inquiry(@contact).deliver
      
    elsif category == "suggest"
      
      ContactMailer.suggest_inquiry(@contact).deliver
      ContactMailer.sent_suggest_inquiry(@contact).deliver
      
    end
  end


end