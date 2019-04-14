module Types
  class NoteType < Types::BaseObject
    field :id, ID, null: false
    field :notable, Types::NotableUnion, null: false
    field :user, Types::UserType, null: false
    field :note_type, String, null: false
    field :message, String, null: false
    field :data, GraphQL::Types::JSON, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
