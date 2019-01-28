class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content
  belongs_to :exchange
  has_one :user
end
