require "rails_helper"

RSpec.describe ContactMailer, :type => :mailer do
  describe "wholesale_inquiry" do
    
    it 'renders the subject' do
      contact = Contact.create(name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi')
      mail = ContactMailer.wholesale_inquiry(contact)
      expect(mail.subject).to eql('Wholesale inquiry')
    end
    
    it 'renders the receiver email' do
      expect(mail.to).to eql([contact.email])
    end
    
    it 'renders the sender email' do
      expect(mail.from).to eql(['feyacandle@gmail.com'])
    end
    
    it 'renders the message' do
      expect(mail.message).to eql(['Hi'])
    end
    
  end 
end