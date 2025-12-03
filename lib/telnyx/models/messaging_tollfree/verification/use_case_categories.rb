# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # Tollfree usecase categories
        module UseCaseCategories
          extend Telnyx::Internal::Type::Enum

          USE_CASE_CATEGORIES_2_FA = :"2FA"
          APP_NOTIFICATIONS = :"App Notifications"
          APPOINTMENTS = :Appointments
          AUCTIONS = :Auctions
          AUTO_REPAIR_SERVICES = :"Auto Repair Services"
          BANK_TRANSFERS = :"Bank Transfers"
          BILLING = :Billing
          BOOKING_CONFIRMATIONS = :"Booking Confirmations"
          BUSINESS_UPDATES = :"Business Updates"
          COVID_19_ALERTS = :"COVID-19 Alerts"
          CAREER_TRAINING = :"Career Training"
          CHATBOT = :Chatbot
          CONVERSATIONAL_ALERTS = :"Conversational / Alerts"
          COURIER_SERVICES_DELIVERIES = :"Courier Services & Deliveries"
          EMERGENCY_ALERTS = :"Emergency Alerts"
          EVENTS_PLANNING = :"Events & Planning"
          FINANCIAL_SERVICES = :"Financial Services"
          FRAUD_ALERTS = :"Fraud Alerts"
          FUNDRAISING = :Fundraising
          GENERAL_MARKETING = :"General Marketing"
          GENERAL_SCHOOL_UPDATES = :"General School Updates"
          HR_STAFFING = :"HR / Staffing"
          HEALTHCARE_ALERTS = :"Healthcare Alerts"
          HOUSING_COMMUNITY_UPDATES = :"Housing Community Updates"
          INSURANCE_SERVICES = :"Insurance Services"
          JOB_DISPATCH = :"Job Dispatch"
          LEGAL_SERVICES = :"Legal Services"
          MIXED = :Mixed
          MOTIVATIONAL_REMINDERS = :"Motivational Reminders"
          NOTARY_NOTIFICATIONS = :"Notary Notifications"
          ORDER_NOTIFICATIONS = :"Order Notifications"
          POLITICAL = :Political
          PUBLIC_WORKS = :"Public Works"
          REAL_ESTATE_SERVICES = :"Real Estate Services"
          RELIGIOUS_SERVICES = :"Religious Services"
          REPAIR_AND_DIAGNOSTICS_ALERTS = :"Repair and Diagnostics Alerts"
          REWARDS_PROGRAM = :"Rewards Program"
          SURVEYS = :Surveys
          SYSTEM_ALERTS = :"System Alerts"
          VOTING_REMINDERS = :"Voting Reminders"
          WAITLIST_ALERTS = :"Waitlist Alerts"
          WEBINAR_REMINDERS = :"Webinar Reminders"
          WORKSHOP_ALERTS = :"Workshop Alerts"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
