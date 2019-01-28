class ClientSerializer < ActiveModel::Serializer
  attributes :id, :about
  belongs_to :user
  has_many :exchanges
  has_many :favorites
end
