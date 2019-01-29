class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :read, :user_id
  belongs_to :exchange
  has_one :user
end
