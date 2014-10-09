class Location < ActiveRecord::Base
  attr_accessible :address, :city, :name, :phone, :state, :url, :zip, :latitude, :longitude
  
  geocoded_by :full_street_address
  after_validation :geocode, :if => :address_changed?
  
  # TODO add tomdoc
  # TODO figure out how to geocode without an address
  def full_street_address
    if address?
      address + ", " + city + ", " + state
    else
      city + ", " + state
    end
  end
  
  def listing_address
      "#{city}, #{state} #{zip.to_s}"
  end
  
end