class Song < ApplicationRecord
  has_many :sections
  has_many :snippets, through: :sections

	validates :title, length: { minimum: 2, maximum: 100}

end
