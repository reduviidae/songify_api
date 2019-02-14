class SnippetSerializer < ActiveModel::Serializer
  attributes :id, :section_id, :content, :created_at, :updated_at
  has_one :section
end
