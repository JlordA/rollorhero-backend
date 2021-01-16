class Api::SandwichesController < ApplicationController

    def index
        sandwiches = Sandwich.all.includes(:likes, :deli_sandwiches)
        render json: sandwiches, except: [:created_at, :updated_at]
    end

    def show
        sandwich = Sandwich.find(params[:id])
        render json: sandwich, except: [:created_at, :updated_at]
    end

end