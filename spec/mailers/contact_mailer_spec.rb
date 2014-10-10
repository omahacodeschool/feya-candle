require "rails_helper"

RSpec.describe ContactMailer, :type => :mailer do
  describe "wholesale_inquiry" do
    
    it 'renders the subject' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.wholesale_inquiry(contact)
      expect(mail.subject).to eql('Wholesale inquiry')
    end
   
    it 'renders the receiver email' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.wholesale_inquiry(contact)
      expect(mail.from).to eql(['feyacandle@gmail.com'])
    end
    
    it 'renders the sender email' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.wholesale_inquiry(contact)
      expect(mail.to).to eql(['feyacandle@gmail.com'])
    end
    
    it 'sends confirmation email to inquirer' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.sent_wholesale_inquiry(contact)
      expect(mail.subject).to eql('Your wholesale inquiry has been sent to Feya Candle')
    end
    
    it 'renders email address of inquirer' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.sent_wholesale_inquiry(contact)
      expect(mail.to).to eql(['test@test.com'])
    end
    
    # it 'renders the message' do
 #      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
 #      mail = ContactMailer.wholesale_inquiry(contact)
 #      expect(mail[:message]).to eql('Hi')
 #    end
    
  end 
  
  describe "volunteer_inquiry" do
    
    it 'renders the subject' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.volunteer_inquiry(contact)
      expect(mail.subject).to eql('Volunteer inquiry')
    end
   
    it 'renders the receiver email' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.volunteer_inquiry(contact)
      expect(mail.from).to eql(['feyacandle@gmail.com'])
    end
    
    it 'renders the sender email' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.volunteer_inquiry(contact)
      expect(mail.to).to eql(['feyacandle@gmail.com'])
    end
    
    it 'sends confirmation email to inquirer' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.sent_volunteer_inquiry(contact)
      expect(mail.subject).to eql('Your volunteer inquiry has been sent to Feya Candle')
    end
    
    it 'renders email address of inquirer' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.sent_volunteer_inquiry(contact)
      expect(mail.to).to eql(['test@test.com'])
    end
  end
  
  describe "suggest_inquiry" do
    
    it 'renders the subject' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.suggest_inquiry(contact)
      expect(mail.subject).to eql('Suggested store inquiry')
    end
   
    it 'renders the receiver email' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.suggest_inquiry(contact)
      expect(mail.from).to eql(['feyacandle@gmail.com'])
    end
    
    it 'renders the sender email' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.suggest_inquiry(contact)
      expect(mail.to).to eql(['feyacandle@gmail.com'])
    end
    
    it 'sends confirmation email to inquirer' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.sent_suggest_inquiry(contact)
      expect(mail.subject).to eql('Your suggestion has been sent to Feya Candle')
    end
    
    it 'renders email address of inquirer' do
      contact = Contact.new({name: 'Jen', email: 'test@test.com', phone: '555.555.5555', message: 'Hi'})
      mail = ContactMailer.sent_suggest_inquiry(contact)
      expect(mail.to).to eql(['test@test.com'])
    end
  end
end