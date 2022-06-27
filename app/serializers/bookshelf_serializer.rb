class BookshelfSerializer
  include JSONAPI::Serializer
  attributes :id, :user_id, :book_id, :read, :owned, :ownership_source, :preferred_cover_image

  belongs_to :user
  belongs_to :book
end
