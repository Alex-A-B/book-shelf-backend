class User < ApplicationRecord
    
    has_secure_password

    validates :username, uniqueness: true ##make more robust validations rather than basic
    validates :email, uniqueness: true
    
    #alias has_many connections
    has_many :commented_books, through: :comments, source: :books
    has_many :shelved_books, through: :bookshelves, source: :books

end
