module Types
  class TaggingType < Types::BaseObject
    field :id, ID, null: false
    # field :tag_id, Integer, null: true
    # field :taggable_type, String, null: true
    # field :taggable_id, Integer, null: true
    # field :tag, Types::TagType, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
