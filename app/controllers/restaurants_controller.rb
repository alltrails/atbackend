class RestaurantsController < ApplicationController
    def index
      if restaurant_params.blank?
        render json: { restaurants: [] }
      else
        render json: { restaurants: Restaurant.new(restaurant_params[:search_text]).list }
      end
    end

    private

    def restaurant_params
      params.permit(:search_text)
    end
end
