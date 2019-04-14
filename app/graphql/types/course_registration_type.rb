module Types
  class CourseRegistrationType < Types::BaseObject
    field :id, ID, null: false
    field :fee, Integer, null: false
    field :code, String, null: false
    field :person, Types::PersonType, null: false
    field :course, Types::CourseType, null: false
    field :invoice, Types::InvoiceType, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
