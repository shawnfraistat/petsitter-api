class Sitter < ApplicationRecord
  belongs_to :user
  has_many :exchanges
  has_many :favorites
end
