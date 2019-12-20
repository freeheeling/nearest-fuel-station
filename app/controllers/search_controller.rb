class SearchController < ApplicationController
  def index
    location = params[:location]

    conn = Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1/') do |f|
      f.adapter Faraday.default_adapter
      f.params['api_key'] = ENV['NREL_API_KEY']
      f.params['location'] = location
      f.params['fuel_type'] = 'ELEC'
    end

    response = conn.get('nearest.json')

    json_parsed = JSON.parse(response.body, symbolize_names: true)
    @stations = json_parsed[:fuel_stations]
  end
end
