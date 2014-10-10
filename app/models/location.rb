class Location < ActiveRecord::Base
  attr_accessible :address, :city, :name, :phone, :state, :url, :zip, :latitude, :longitude
  
  geocoded_by :full_street_address
  after_validation :geocode, :if => :address_changed?
  
  # TODO figure out how to geocode without an address
  # Concatenates a set of inputs into one address, used for geocoding
  #
  # Returns the concatenated String
  def full_street_address
    if address?
      address + ", " + city + ", " + state
    else
      city + ", " + state
    end
  end
  
  #Concatenates a set of inputs into one line, used for formatting location listings
  #
  # Returns the concatenated String
  def listing_address
    city + ", " + state + " " + zip.to_s
  end
  
  # Sets the radius for a given location search and performs an ActiveRecord query
  #
  # zip - the zipcode entered into the query
  # radius - the radius entered into the query
  #
  # Examples - 
  #
  #   Location.search_by_radius(68154, 10)
  #       => returns the list of locations within 10 miles of 68154
  #
  # Returns one or more Location objects that match the ActiveRecord query
  def self.search_by_radius(zip, radius)
    if radius != nil
      @locations = self.near(zip, radius.to_i, :order => :distance)
    else
      @locations = self.near(zip, 50, :order => :distance )
    end
  end
  
end