class Section < ApplicationRecord
  has_many :snippets
  belongs_to :song
end
