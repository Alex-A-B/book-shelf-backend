class BooksController < ApplicationController

    # CREATE/VIEW methods only
    # Admin delete/update method? #stretch

    def index
        books = Book.all
        render json: books
    end

    def show
        book = book.find_by_title(title: params[:title])
        render json: book
    end



    private

    def book_params
        params.permit(:image_url, :author, :title, :synopsis, :genre)
    end


end
