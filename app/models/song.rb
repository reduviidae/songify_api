class Song < ApplicationRecord
  has_many :sections
  has_many :snippets, through: :sections
end
