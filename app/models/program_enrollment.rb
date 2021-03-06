class ProgramEnrollment < ApplicationRecord
  belongs_to :person
  belongs_to :cohort, optional: true
  belongs_to :deposit_invoice, class_name: "Invoice", optional: true
  has_many :program_applications
  has_many :program_acceptances

  enum status: {active: 0, won: 1, lost: 2, cancelled: 3, pending: 4}
  enum stage: {applied: 3, interviewing: 4, accepted: 5, enrolling: 7, enrolled: 6}

  def current_program_acceptance
    program_acceptances.order(created_at: :desc).first
  end

  def ac_deposit_outstanding_value
    deposit_required? && deposit_paid? ? "No" : "Yes"
  end

  def ac_deposit_invoice_url_value
    deposit_invoice&.payment_url
  end

  def ac_sea_signed_value
    enrollment_agreement_complete ? "Yes" : "No"
  end

  def ac_sea_sign_url_value
    current_program_acceptance&.enrollment_agreement_url
  end

  def ac_financially_cleared_value
    financial_clearance.present? ? "Yes" : "No"
  end

  def ac_cohort_start_date_value
    cohort.begins_on.to_s
  end

  def ac_cohort_name_value
    "Cohort #{cohort.name}"
  end

  def ac_continue_application_url_value
    program_applications.order(created_at: :desc).first.ac_continue_application_url_value
  end

  def ac_student_status_url_value
    student_status_url || begin
      gateway_url = "https://gateway.suncoast.io/s/#{status_locator}"
      short_url = ShortURL.generate("Student Status for #{person.full_name}", gateway_url)
      update(student_status_url: short_url)
      short_url
    end
  end

  def self.sync_all
    where(status: "active").each do |enrollment|
      SyncProgramEnrollmentToActiveCampaign.call(enrollment.id)
    end
  end
end
