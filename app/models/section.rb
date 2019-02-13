class Section < ApplicationRecord
  belongs_to :snippet
  belongs_to :song
end
