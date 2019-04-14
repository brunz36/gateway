module Types
  class PersonType < Types::BaseObject
    field :id, ID, null: false
    field :tags, [Types::TagType], null: false
    field :invoices, [Types::InvoiceType], null: false
    field :notes, [Types::NoteType], null: false
    field :program_applications, [Types::ProgramApplicationType], null: false
    field :program_enrollments, [Types::ProgramEnrollmentType], null: false
    field :course_registrations, [Types::CourseRegistrationType], null: false
    field :full_name, String, null: false
    field :email_address, String, null: true
    field :ac_contact_identifier, String, null: true
    field :phone_number, String, null: true
    field :source, String, null: true
    field :preferred_communication, String, null: true
    field :shirt_size, String, null: true
    field :dietary_note, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
