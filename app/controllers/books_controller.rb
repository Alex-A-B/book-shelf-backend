class BooksController < ApplicationController

    skip_before_action :authorized!, only: [:index, :show]
    # CREATE/VIEW methods only
    # Admin delete/update method? #stretch

    def index
        books = Book.all
        render json: books
    end

    def show
        book = Book.find_by_title(title: params[:title])
        render json: book
    end

    def create
        book = current_user.shelved_books.find_or_create_by!(params[:book_params])
        render json: book, status: :created
    end

    private

    def book_params
        params.permit(:image_url, :author, :title, :synopsis, :genre)
    end


end
