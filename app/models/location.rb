class Location < ActiveRecord::Base
  attr_accessible :address, :city, :name, :phone, :state, :url, :zip, :latitude, :longitude
  
  geocoded_by :full_street_address
  after_validation :geocode, :if => :address_changed?
  
  def full_street_address
    if address?
      address + ", " + city + ", " + state
    else
      city + ", " + state
    end
  end
  
  def location
    b=[]
    b << latitude
    b << longitude
    Geocoder.coordinates(b)
  end
  
  def coords(location)
    a = Geocoder.coordinates(location)
    lat = a[0]
    long = a[1]
    update(latitude: lat)
    update(longitude: long)
  end
  
end