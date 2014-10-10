# require "rails_helper"
#
# RSpec.describe UserMailer, :type => :mailer do
#   describe "reset_password_email" do
#     let(:user) { :name => 'Test Person', :email => 'test@test.com' }
#     let(:mail) { UserMailer.reset_password_email(user) }
#
#     it "renders the header information" do
#       expect(mail.subject).to eq("Your password has been reset.")
#       expect(mail.to).to eq([user.email])
#       expect(mail.from).to eq(["feyacandle@gmail.com"])
#     end
#
#     it "renders the body" do
#       expect(mail.body.encoded).to match("Hi")
#     end
#   end
# end