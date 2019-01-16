# frozen_string_literal: true

class UserLoginSerializer < ActiveModel::Serializer
  attributes :id, :email, :token, :name, :pic_url, :zip_code, :client, :sitter, :image

  def token
    Rails.application.message_verifier(:signed_token).generate(object.token)
  end
end
