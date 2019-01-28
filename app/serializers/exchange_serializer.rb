class ExchangeSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :client
  belongs_to :sitter
  has_many :messages
end
