module Types
  class InvoiceItemType < Types::BaseObject
    field :id, ID, null: false
    field :invoice, Types::InvoiceType, null: false
    field :description, String, null: false
    field :quantity, Integer, null: false
    field :amount, Float, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
