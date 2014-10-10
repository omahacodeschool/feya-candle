require 'rails_helper'

RSpec.describe Location, :type => :model do
  
  it 'returns the full street address as a one-line string without zip code' do
    @location = Location.new({:address => "123 Main", :city => "Omaha", :state => "NE"})
    expect(@location.full_street_address).to eql("123 Main, Omaha, NE")
  end
  
  it 'returns the city and state as a one-line string without zip code when the street address is absent' do
    @location = Location.new({:address => nil, :city => "Omaha", :state => "NE"})
    expect(@location.full_street_address).to eql("Omaha, NE")
  end
  
  it 'returns the city, state, and zip code as a one-line string' do
    @location = Location.new({:city => "Omaha", :state => "NE", :zip => 68102})
    expect(@location.listing_address).to eql("Omaha, NE 68102")
  end
  
  it 'returns the search based on zip with no radius' do
    @location = Location.new({:zip => 68102})
    expect(Location.search_by_radius("68102", nil)).to include(@location)
  end
  
  it 'returns the search based on zip and radius' do
    @location = Location.new({:zip => 68102})
    expect(Location.search_by_radius("68102", "50")).to include(@location)
  end
  
end
  