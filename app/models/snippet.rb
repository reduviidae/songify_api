class Snippet < ApplicationRecord
  belongs_to :song
  has_many :snippets
end
