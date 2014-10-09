class Contact < ActiveRecord::Base
  attr_accessible :company, :email, :message, :name, :phone, :category
  
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :message, presence: true
  validates :category, presence: true

end
