class StationSearch
  def initialize(location)
    @location = location
  end

  def stations
    station_service = NRELService.new
    @stations ||= station_service.station_location(location).map do |station_data|
      Station.new(station_data)
    end
  end

  private
    attr_reader :location
end
