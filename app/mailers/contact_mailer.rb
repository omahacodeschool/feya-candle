class ContactMailer < ActionMailer::Base
  default to: "feyacandle@gmail.com"
  default from: "feyacandle@gmail.com"
  @url = contacts_path
  
  def wholesale_inquiry(contact)
    @contact = contact
    mail(:subject => "Wholesale inquiry")
  end
  
  def volunteer_inquiry(contact)
    @contact = contact
    mail(:subject => "Volunteer inquiry")
  end
  
  def suggest_inquiry(contact)
    @contact = contact
    mail(:subject => "Suggested store inquiry")
  end
  
end