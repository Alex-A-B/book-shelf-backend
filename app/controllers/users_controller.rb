class UsersController < ApplicationController
    skip_before_action :authorized!, only: [:create]

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created ##change render json with serializer
    end

    def show
        render json: @current_user, status: :ok
    end



    private

    def user_params
        params.permit(:username, :email, :password) #maybe password confirmation? (yes don't be silly!)
    end
end
