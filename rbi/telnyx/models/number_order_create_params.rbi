# typed: strong

module Telnyx
  module Models
    class NumberOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberOrderCreateParams, Telnyx::Internal::AnyHash)
        end

      # Identifies the billing group associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :billing_group_id

      sig { params(billing_group_id: String).void }
      attr_writer :billing_group_id

      # Identifies the connection associated with this phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # Identifies the messaging profile associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      sig do
        returns(
          T.nilable(T::Array[Telnyx::NumberOrderCreateParams::PhoneNumber])
        )
      end
      attr_reader :phone_numbers

      sig do
        params(
          phone_numbers:
            T::Array[Telnyx::NumberOrderCreateParams::PhoneNumber::OrHash]
        ).void
      end
      attr_writer :phone_numbers

      sig do
        params(
          billing_group_id: String,
          connection_id: String,
          customer_reference: String,
          messaging_profile_id: String,
          phone_numbers:
            T::Array[Telnyx::NumberOrderCreateParams::PhoneNumber::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the billing group associated with the phone number.
        billing_group_id: nil,
        # Identifies the connection associated with this phone number.
        connection_id: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Identifies the messaging profile associated with the phone number.
        messaging_profile_id: nil,
        phone_numbers: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            billing_group_id: String,
            connection_id: String,
            customer_reference: String,
            messaging_profile_id: String,
            phone_numbers:
              T::Array[Telnyx::NumberOrderCreateParams::PhoneNumber],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class PhoneNumber < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NumberOrderCreateParams::PhoneNumber,
              Telnyx::Internal::AnyHash
            )
          end

        # e164_phone_number
        sig { returns(String) }
        attr_accessor :phone_number

        # ID of bundle to associate the number to
        sig { returns(T.nilable(String)) }
        attr_reader :bundle_id

        sig { params(bundle_id: String).void }
        attr_writer :bundle_id

        # ID of requirement group to use to satisfy number requirements
        sig { returns(T.nilable(String)) }
        attr_reader :requirement_group_id

        sig { params(requirement_group_id: String).void }
        attr_writer :requirement_group_id

        sig do
          params(
            phone_number: String,
            bundle_id: String,
            requirement_group_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # e164_phone_number
          phone_number:,
          # ID of bundle to associate the number to
          bundle_id: nil,
          # ID of requirement group to use to satisfy number requirements
          requirement_group_id: nil
        )
        end

        sig do
          override.returns(
            {
              phone_number: String,
              bundle_id: String,
              requirement_group_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
