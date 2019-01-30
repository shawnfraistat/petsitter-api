class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :read, :user_id, :created_at
  belongs_to :exchange
  has_one :user
end
