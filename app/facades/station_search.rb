class StationSearch
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def stations
    conn = Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1/') do |f|
      f.adapter Faraday.default_adapter
      f.params['api_key'] = ENV['NREL_API_KEY']
      f.params['location'] = location
      f.params['fuel_type'] = 'ELEC'
    end

    response = conn.get('nearest.json')

    station_search_data = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]

    station_search_data.map do |station_data|
      Station.new(station_data)
    end
  end
end
