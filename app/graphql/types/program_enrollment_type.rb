module Types
  class ProgramEnrollmentType < Types::BaseObject
    field :id, ID, null: false
    field :person, Types::PersonType, null: false
    field :cohort, Types::CohortType, null: false
    field :deposit_invoice, Types::InvoiceType, null: false
    field :program_applications, [Types::ProgramApplicationType], null: false
    field :program_acceptances, [Types::ProgramAcceptanceType], null: false
    field :program, String, null: false
    field :stage, Types::EnrollmentStage, null: false
    field :status, Types::EnrollmentStatus, null: false
    field :ac_deal_identifier, String, null: true
    field :status_locator, Types::UUIDType, null: false
    field :deposit_required, Boolean, null: false
    field :deposit_paid, Boolean, null: false
    field :enrollment_agreement_complete, Boolean, null: false
    field :financial_clearance, String, null: false
    field :lost_reason, String, null: false
    field :referrer, String, null: false
    field :ac_deposit_outstanding_field, String, null: false
    field :ac_sea_signed_field, String, null: false
    field :ac_financially_cleared_field, String, null: false
    field :ac_deposit_invoice_url_field, String, null: false
    field :ac_sea_sign_url_field, String, null: false
    field :ac_cohort_start_date_field, String, null: false
    field :ac_cohort_name_field, String, null: false
    field :ac_student_status_url_field, String, null: false
    field :student_status_url, String, null: false
    field :academic_signoff, Boolean, null: false
    field :administrative_signoff, Boolean, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
