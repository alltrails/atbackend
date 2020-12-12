class RestaurantsController < ApplicationController
    def index
      render json: { restaurants: Restaurant.new.list }
    end

    def show
      render json: { show: :showww }
    end
end
