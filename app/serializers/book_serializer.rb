class BookSerializer
  include JSONAPI::Serializer
  attributes :id, :image_url, :author, :title, :synopsis, :genre 

end
