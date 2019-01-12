class ClientSerializer < ActiveModel::Serializer
  attributes :id, :about, :pic_url
  has_one :user
end
