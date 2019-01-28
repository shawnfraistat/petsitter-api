class Exchange < ApplicationRecord
  belongs_to :client
  belongs_to :sitter
  has_many :messages
end
