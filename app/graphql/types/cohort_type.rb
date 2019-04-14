module Types
  class CohortType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :is_enrolling, Boolean, null: false
    field :begins_on, Types::DateType, null: true
    field :ends_on, Types::DateType, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
