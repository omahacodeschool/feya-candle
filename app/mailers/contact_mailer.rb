class ContactMailer < ActionMailer::Base
  default from: "feyacandle@gmail.com"
  @url = contacts_path
  
  def wholesale_inquiry(contact)
    @contact = contact
    mail(:to => "feyacandle@gmail.com", :subject => "Wholesale inquiry")
  end
  
  def volunteer_inquiry(contact)
    @contact = contact
    mail(:to => "feyacandle@gmail.com", :subject => "Volunteer inquiry")
  end
  
  def suggest_inquiry(contact)
    @contact = contact
    mail(:to => "feyacandle@gmail.com", :subject => "Suggested store inquiry")
  end
  
  def sent_wholesale_inquiry(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => "Your wholesale inquiry has been sent to Feya Candle")
  end
  
  def sent_volunteer_inquiry(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => "Your volunteer inquiry has been sent to Feya Candle")
  end
  
  def sent_suggest_inquiry(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => "Your suggestion has been sent to Feya Candle")
  end
  
end