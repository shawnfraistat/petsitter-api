class Favorite < ApplicationRecord
  belongs_to :sitter
  belongs_to :client
end
