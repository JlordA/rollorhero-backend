class Api::UsersController < ApplicationController

    def index
        users = User.all.includes(:likes, :reviews)
        render json: users, except: [:created_at, :updated_at]
    end

    def create
        user = User.create(user_params)
        render json: user, except: [:created_at, :updated_at]
    end

    def login
        user = User.find_by(username: params[:username])
        if (user && user.authenticate(params[:password]))
            render json: user
        else
            render json: {errors: "invalid username"}
        end
    end

    private

    def user_params
        params.permit(:username, :password_digest, :neighborhood, :borough)
    end
end