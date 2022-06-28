class BookshelfSerializer
  include JSONAPI::Serializer
  attributes :id, :user_id, :book_id, :book, :read, :owned, :ownership_source, :preferred_cover_image

  attribute :book do |object|
    BookSerializer.new(object.book)
  end

end
