class Book < ApplicationRecord
        
    has_many :user_comments, through: :comments, source: :users
    has_many :user_bookshelves, through: :bookshelves, source: :users

end
