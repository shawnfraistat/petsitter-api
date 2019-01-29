class ExchangeSerializer < ActiveModel::Serializer
  attributes :id, :sitter_id, :client_id
  belongs_to :client
  belongs_to :sitter
  has_many :messages
end
