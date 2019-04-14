module Types
  class InvoiceType < Types::BaseObject
    field :id, ID, null: false
    field :person, Types::PersonType, null: false
    field :invoice_items, [Types::InvoiceItemType], null: false
    field :notes, [Types::NoteType], null: false
    field :due_on, Types::DateType, null: false
    field :stripe_id, String, null: true
    field :payment_url, String, null: true
    field :is_paid, Boolean, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
