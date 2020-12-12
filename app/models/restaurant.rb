class Restaurant
  def initialize
    @client = GooglePlaces::Client.new(Rails.application.credentials[:places_api_key])
  end

  def list
    @client.spots_by_query('Pizza near Miami Florida')
  end


end
