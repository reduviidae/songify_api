class Snippet < ApplicationRecord
  belongs_to :section

	validates :content, length: { minimum: 2, maximum: 100}

end
