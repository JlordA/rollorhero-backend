class Api::DeliSandwichesController < ApplicationController

    def index
        deli_sandwiches = DeliSandwich.all
        render json: deli_sandwiches, except: [:created_at, :updated_at]
    end

    def create
        deli_sandwich = DeliSandwich.create(deli_sandwich_params)
        render json: deli_sandwich, except: [:created_at, :updated_at]
    end

    private

    def deli_sandwich_params
        params.permit(:sandwich_id, :deli_id)
    end

end