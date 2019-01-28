class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :sitter_id, :client_id
  belongs_to :sitter
  belongs_to :client
end
