class Restaurant
  def initialize(search_text=nil)
    @client = GooglePlaces::Client.new(Rails.application.credentials[:places_api_key])
    @search_text = search_text
  end

  def list
    list = @client.spots_by_query(@search_text).take(10)
    list.each do |p|
      photo_url = @client.spot(p.place_id).photos[0].fetch_url(300)
      p[:photos] << {"photo_url": photo_url}
    end
  end
end
