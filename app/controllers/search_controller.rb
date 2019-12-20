class SearchController < ApplicationController
  def index
    station = params[:station]

    conn = Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1/') do |f|
      f.adapter Faraday.default_adapter
      f.params['api_key'] = ENV['NREL_API_KEY']
      f.params['location'] = '1331 17th St LL100, Denver, CO 80202'
      f.params['fuel_type'] = 'ELEC'
    end

    response = conn.get('nearest.json')
  end
end
