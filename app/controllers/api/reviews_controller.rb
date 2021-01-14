class Api::ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews, except: [:created_at, :updated_at]
    end

    def show
        review = Review.find(params[:id])
        render json: review, except: [:created_at, :updated_at]
    end

    def create
        review = Review.create(review_params)
        render json: review, except: [:created_at, :updated_at]
    end

    private

    def review_params
        params.require(:review).permit(:title, :date, :body, :rating, :user, :deli)
    end
end