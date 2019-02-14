class SectionSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :section_type, :complete, :created_at, :updated_at
  has_many :snippets
  has_one :song
end
