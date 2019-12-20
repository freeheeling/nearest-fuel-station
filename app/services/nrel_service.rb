class NRELService
  def station_location
    get_json('nearest.json')
  end

  private
    def get_json(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
    end

    def conn(location)
      Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1/') do |f|
        f.adapter Faraday.default_adapter
        f.params['api_key'] = ENV['NREL_API_KEY']
        f.params['location'] = location
        f.params['fuel_type'] = 'ELEC'
      end
    end
end
