# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # Tollfree usecase categories
        module UseCaseCategories
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MessagingTollfree::Verification::UseCaseCategories
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USE_CASE_CATEGORIES_2_FA =
            T.let(
              :"2FA",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          APP_NOTIFICATIONS =
            T.let(
              :"App Notifications",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          APPOINTMENTS =
            T.let(
              :Appointments,
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          AUCTIONS =
            T.let(
              :Auctions,
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          AUTO_REPAIR_SERVICES =
            T.let(
              :"Auto Repair Services",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          BANK_TRANSFERS =
            T.let(
              :"Bank Transfers",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          BILLING =
            T.let(
              :Billing,
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          BOOKING_CONFIRMATIONS =
            T.let(
              :"Booking Confirmations",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          BUSINESS_UPDATES =
            T.let(
              :"Business Updates",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          COVID_19_ALERTS =
            T.let(
              :"COVID-19 Alerts",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          CAREER_TRAINING =
            T.let(
              :"Career Training",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          CHATBOT =
            T.let(
              :Chatbot,
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          CONVERSATIONAL_ALERTS =
            T.let(
              :"Conversational / Alerts",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          COURIER_SERVICES_DELIVERIES =
            T.let(
              :"Courier Services & Deliveries",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          EMERGENCY_ALERTS =
            T.let(
              :"Emergency Alerts",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          EVENTS_PLANNING =
            T.let(
              :"Events & Planning",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          FINANCIAL_SERVICES =
            T.let(
              :"Financial Services",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          FRAUD_ALERTS =
            T.let(
              :"Fraud Alerts",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          FUNDRAISING =
            T.let(
              :Fundraising,
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          GENERAL_MARKETING =
            T.let(
              :"General Marketing",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          GENERAL_SCHOOL_UPDATES =
            T.let(
              :"General School Updates",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          HR_STAFFING =
            T.let(
              :"HR / Staffing",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          HEALTHCARE_ALERTS =
            T.let(
              :"Healthcare Alerts",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          HOUSING_COMMUNITY_UPDATES =
            T.let(
              :"Housing Community Updates",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          INSURANCE_SERVICES =
            T.let(
              :"Insurance Services",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          JOB_DISPATCH =
            T.let(
              :"Job Dispatch",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          LEGAL_SERVICES =
            T.let(
              :"Legal Services",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          MIXED =
            T.let(
              :Mixed,
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          MOTIVATIONAL_REMINDERS =
            T.let(
              :"Motivational Reminders",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          NOTARY_NOTIFICATIONS =
            T.let(
              :"Notary Notifications",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          ORDER_NOTIFICATIONS =
            T.let(
              :"Order Notifications",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          POLITICAL =
            T.let(
              :Political,
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          PUBLIC_WORKS =
            T.let(
              :"Public Works",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          REAL_ESTATE_SERVICES =
            T.let(
              :"Real Estate Services",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          RELIGIOUS_SERVICES =
            T.let(
              :"Religious Services",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          REPAIR_AND_DIAGNOSTICS_ALERTS =
            T.let(
              :"Repair and Diagnostics Alerts",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          REWARDS_PROGRAM =
            T.let(
              :"Rewards Program",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          SURVEYS =
            T.let(
              :Surveys,
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          SYSTEM_ALERTS =
            T.let(
              :"System Alerts",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          VOTING_REMINDERS =
            T.let(
              :"Voting Reminders",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          WAITLIST_ALERTS =
            T.let(
              :"Waitlist Alerts",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          WEBINAR_REMINDERS =
            T.let(
              :"Webinar Reminders",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )
          WORKSHOP_ALERTS =
            T.let(
              :"Workshop Alerts",
              Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingTollfree::Verification::UseCaseCategories::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
