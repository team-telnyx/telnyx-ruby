# typed: strong

module Telnyx
  module Models
    class MessagingHostedNumberOrderCheckEligibilityResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # List of phone numbers with their eligibility status.
      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber
            ]
          )
        )
      end
      attr_reader :phone_numbers

      sig do
        params(
          phone_numbers:
            T::Array[
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::OrHash
            ]
        ).void
      end
      attr_writer :phone_numbers

      sig do
        params(
          phone_numbers:
            T::Array[
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # List of phone numbers with their eligibility status.
        phone_numbers: nil
      )
      end

      sig do
        override.returns(
          {
            phone_numbers:
              T::Array[
                Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber
              ]
          }
        )
      end
      def to_hash
      end

      class PhoneNumber < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber,
              Telnyx::Internal::AnyHash
            )
          end

        # Detailed information about the eligibility status.
        sig { returns(T.nilable(String)) }
        attr_reader :detail

        sig { params(detail: String).void }
        attr_writer :detail

        # Whether the phone number is eligible for hosted messaging.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :eligible

        sig { params(eligible: T::Boolean).void }
        attr_writer :eligible

        # The eligibility status of the phone number.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          )
        end
        attr_reader :eligible_status

        sig do
          params(
            eligible_status:
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::OrSymbol
          ).void
        end
        attr_writer :eligible_status

        # The phone number in e164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig do
          params(
            detail: String,
            eligible: T::Boolean,
            eligible_status:
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::OrSymbol,
            phone_number: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Detailed information about the eligibility status.
          detail: nil,
          # Whether the phone number is eligible for hosted messaging.
          eligible: nil,
          # The eligibility status of the phone number.
          eligible_status: nil,
          # The phone number in e164 format.
          phone_number: nil
        )
        end

        sig do
          override.returns(
            {
              detail: String,
              eligible: T::Boolean,
              eligible_status:
                Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol,
              phone_number: String
            }
          )
        end
        def to_hash
        end

        # The eligibility status of the phone number.
        module EligibleStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER_CAN_NOT_BE_REPEATED =
            T.let(
              :NUMBER_CAN_NOT_BE_REPEATED,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          NUMBER_CAN_NOT_BE_VALIDATED =
            T.let(
              :NUMBER_CAN_NOT_BE_VALIDATED,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          NUMBER_CAN_NOT_BE_WIRELESS =
            T.let(
              :NUMBER_CAN_NOT_BE_WIRELESS,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          NUMBER_CAN_NOT_BE_ACTIVE_IN_YOUR_ACCOUNT =
            T.let(
              :NUMBER_CAN_NOT_BE_ACTIVE_IN_YOUR_ACCOUNT,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          NUMBER_CAN_NOT_HOSTED_WITH_A_TELNYX_SUBSCRIBER =
            T.let(
              :NUMBER_CAN_NOT_HOSTED_WITH_A_TELNYX_SUBSCRIBER,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          NUMBER_CAN_NOT_BE_IN_TELNYX =
            T.let(
              :NUMBER_CAN_NOT_BE_IN_TELNYX,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          NUMBER_IS_NOT_A_US_NUMBER =
            T.let(
              :NUMBER_IS_NOT_A_US_NUMBER,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          NUMBER_IS_NOT_A_VALID_ROUTING_NUMBER =
            T.let(
              :NUMBER_IS_NOT_A_VALID_ROUTING_NUMBER,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          NUMBER_IS_NOT_IN_E164_FORMAT =
            T.let(
              :NUMBER_IS_NOT_IN_E164_FORMAT,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          BILLING_ACCOUNT_CHECK_FAILED =
            T.let(
              :BILLING_ACCOUNT_CHECK_FAILED,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          BILLING_ACCOUNT_IS_ABOLISHED =
            T.let(
              :BILLING_ACCOUNT_IS_ABOLISHED,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )
          ELIGIBLE =
            T.let(
              :ELIGIBLE,
              Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus::TaggedSymbol
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
