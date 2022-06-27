class UserSerializer
  include JSONAPI::Serializer

  attributes :id, :username, :email
  has_many :bookshelves
  # has_many :comments
  # has_many :commented_books, through: :comments, source: :book
  # has_many :books, through: :bookshelves

end
