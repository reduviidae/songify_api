class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :likes, :complete, :created_at, :updated_at
  has_many :sections
  has_many :snippets
end
