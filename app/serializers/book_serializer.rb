class BookSerializer
  include JSONAPI::Serializer
  attributes :id, :image_url, :author, :title, :synopsis, :genre

  # has_many :users, through: :bookshelves
  has_many :bookshelves
end
