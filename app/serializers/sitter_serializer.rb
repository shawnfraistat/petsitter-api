class SitterSerializer < ActiveModel::Serializer
  attributes :id, :about, :price, :service_range, :animal_types, :services_provided
  belongs_to :user
  has_many :exchanges
  has_many :favorites
end
