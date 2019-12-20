require 'rails_helper'

describe NRELService do
  context 'instance methods' do
    context 'station_location' do
      it 'returns station data' do
        search = subject.station_location('1331 17th St LL100, Denver, CO 80202')
        expect(search).to be_a Hash
        expect(search[:fuel_stations]).to be_a Array
        station_data = search[:fuel_stations].first

        expect(station_data).to have_key :station_name
        expect(station_data).to have_key :street_address
        expect(station_data).to have_key :city
        expect(station_data).to have_key :state
        expect(station_data).to have_key :zip
        expect(station_data).to have_key :distance
      end
    end
  end
end
