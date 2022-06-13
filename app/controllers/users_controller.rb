class UsersController < ApplicationController
    skip_before_action :authorized!, only: [:create]

    def create
        user = User.create(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        render json:
    end



    private

    def user_params
        params.permit(:username, :email, :password)
    end
end
