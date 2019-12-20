class Station
  attr_reader :station_name,
              :street_address,
              :city,
              :state,
              :zip,
              :distance

  def initialize(attributes = {})
    @station_name = attributes[:station_name]
    @street_address = attributes[:street_address]
    @city = attributes[:city]
    @state = attributes[:state]
    @zip = attributes[:zip]
    @distance = attributes[:distance]
  end
end
