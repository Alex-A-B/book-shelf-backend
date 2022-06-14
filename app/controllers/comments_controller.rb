class CommentsController < ApplicationController

    #to have full CRUD methods
    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find_by_id(id: params[:id])
        render json: comment
    end

    def create
        comment = Comment.create!(comment_params)
        render json: comment, status: :created
    end

    def update 
        comment = Comment.find_by_id(id: params[:id])
        comment.update(comment_params)
        render json: comment
    end

    def destroy
        comment = Comment.find_by_id(id: params[:id])
        comment.destroy
        head :no_content
    end

    private

    def comment_params
        #to edit down dependent on prefered create route
        params.permit(:user_id, :book_id, :comment, :rating) 
    end

end
