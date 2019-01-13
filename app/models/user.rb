# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_one :client, dependent: :destroy
  has_one :sitter, dependent: :destroy
end
