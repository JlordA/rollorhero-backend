class Api::LikesController < ApplicationController

    def index
        likes = Like.all
        render json: likes, except: [:created_at, :updated_at]
    end

    def create
        like = Like.create(like_params)
        render json: like, except: [:created_at, :updated_at]
    end

    private

    def like_params
        params.permit(:user_id, :sandwich_id)
    end
end