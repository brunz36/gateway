module Types
  class CourseType < Types::BaseObject
    field :id, ID, null: false
    field :course_registrations, [Types::CourseRegistrationType], null: false
    field :people, [Types::PersonType], null: false
    field :identifier, String, null: false
    field :name, String, null: false
    field :session, String, null: false
    field :starts_on, Types::DateType, null: false
    field :ends_on, Types::DateType, null: false
    field :days, String, null: false
    field :time, String, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
