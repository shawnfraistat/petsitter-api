class ClientSerializer < ActiveModel::Serializer
  attributes :id, :about
  has_one :user
end
