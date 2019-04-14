module Types
  class ProgramAcceptanceType < Types::BaseObject
    field :id, ID, null: false
    field :cohort, Types::CohortType, null: false
    field :program_enrollment, Types::ProgramEnrollmentType, null: false
    field :tuition_reduction, Integer, null: false
    field :enrollment_agreement_url, String, null: false
    field :notification_body, String, null: false
    field :message_id, String, null: true
    field :program_enrollment_id, Integer, null: false
    field :enrollment_agreement_identifier, String, null: true
    field :is_rescinded, Boolean, null: false
    field :sent_at, GraphQL::Types::ISO8601DateTime, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
