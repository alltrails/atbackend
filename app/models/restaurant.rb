class Restaurant
  def initialize(search_text=nil)
    @client = GooglePlaces::Client.new(Rails.application.credentials[:places_api_key])
    @search_text = search_text
  end

  def list
    @client.spots_by_query(@search_text).take(10)
  end
end
