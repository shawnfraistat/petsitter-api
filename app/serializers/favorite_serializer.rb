class FavoriteSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :sitter
  belongs_to :client
end
