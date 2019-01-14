# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :token, :name, :pic_url, :zip_code, :client, :sitter
end
