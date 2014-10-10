class ContactMailer < ActionMailer::Base
  default from: '"Feya Candles" <feyacandle@gmail.com>'
  
  # Sends an email to the admin when a wholesale inquiry form is submitted
  #
  # contact - a Contact object containing inquiry details
  def wholesale_inquiry(contact)
    @contact = contact
    @url = contacts_path
    mail(:to => "feyacandle@gmail.com", :subject => "Wholesale inquiry")
  end
  
  # Sends an email to the admin when a volunteer inquiry form is submitted
  #
  # contact - a Contact object containing inquiry details
  def volunteer_inquiry(contact)
    @contact = contact
    @url = contacts_path
    mail(:to => "feyacandle@gmail.com", :subject => "Volunteer inquiry")
  end
  
  # Sends an email to the admin when a store suggestion form is submitted
  #
  # contact - a Contact object containing inquiry details
  def suggest_inquiry(contact)
    @contact = contact
    @url = contacts_path
    mail(:to => "feyacandle@gmail.com", :subject => "Suggested store inquiry")
  end
  
  # Sends an email to the Contact email when they submit a wholesale inquiry form
  #
  # contact - a Contact object containing inquiry details
  def sent_wholesale_inquiry(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => "Your wholesale inquiry has been sent to Feya Candle")
  end
  
  # Sends an email to the Contact email when they submit a volunteer inquiry form
  #
  # contact - a Contact object containing inquiry details
  def sent_volunteer_inquiry(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => "Your volunteer inquiry has been sent to Feya Candle")
  end
  
  # Sends an email to the Contact email when they submit a store suggestion form
  #
  # contact - a Contact object containing inquiry details
  def sent_suggest_inquiry(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => "Your suggestion has been sent to Feya Candle")
  end
  
end