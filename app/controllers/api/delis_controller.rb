class Api::DelisController < ApplicationController

    def index
        delis = Deli.all.includes(:deli_sandwiches, :reviews)
        render json: delis, :include => {:sandwiches => :likes}, except: [:created_at, :updated_at]
    end

    def show
        deli = Deli.find(params[:id])
        render json: deli, :include => {:sandwiches => :likes}, except: [:created_at, :updated_at]
    end

    def create
        deli = Deli.create(deli_params)
        render json: deli, except: [:created_at, :updated_at]
    end

    private

    def deli_params
        params.permit(:name, :address, :style, :hours_open, :neighborhood, :borough, :lat, :lng)
    end
end