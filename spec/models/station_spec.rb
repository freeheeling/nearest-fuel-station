require 'rails_helper'

describe Station do
  it 'exists' do
    station = Station.new({})
    expect(station).to be_a Station
  end

  it 'has attributes' do
    attributes = {
      station_name: 'Seventeenth Street Plaza',
      street_address: '1225 17th St.',
      city: 'Denver',
      state: 'CO',
      zip: '80202'
    }

    expect(station.station_name).to eq('Seventeenth Street Plaza')
    expect(station.street_address).to eq('1225 17th St.')
    expect(station.city).to eq('Denver')
    expect(station.state).to eq('CO')
    expect(station.zip).to eq('80202')
  end
end
