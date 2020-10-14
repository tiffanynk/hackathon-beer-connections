class FansController < ApplicationController
    def index
        @fans = Fan.all 

        render json: @fans, include: [:brewery]
    end

    def show
        @fan = Fan.find(params[:id])

        render json: @fan, include: [:brewery]
    end

    def create
        @fan = Fan.create(name: params[:name], brewery_id: params[:brewery_id])

        render json: @fan, include: [:brewery]
    end
end
