class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :read
  belongs_to :exchange
  has_one :user
end
