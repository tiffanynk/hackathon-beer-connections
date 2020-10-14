class BreweriesController < ApplicationController
    def index
        @breweries = Brewery.all 

        render json: @breweries, include: [:fans]
    end

    def show
        @brewery = Brewery.find(params[:id])

        render json: @brewery, include: [:fans]
    end
end
