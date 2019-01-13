class SitterSerializer < ActiveModel::Serializer
  attributes :id, :about, :price, :service_range, :animal_types, :services_provided
  has_one :user
end
