class FavoriteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :sitter
  has_one :client
end
