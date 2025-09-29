# typed: strong

module Telnyx
  module Models
    class NumberReservationCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NumberReservationCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      sig { returns(T.nilable(T::Array[Telnyx::ReservedPhoneNumber])) }
      attr_reader :phone_numbers

      sig do
        params(
          phone_numbers: T::Array[Telnyx::ReservedPhoneNumber::OrHash]
        ).void
      end
      attr_writer :phone_numbers

      sig do
        params(
          customer_reference: String,
          phone_numbers: T::Array[Telnyx::ReservedPhoneNumber::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A customer reference string for customer look ups.
        customer_reference: nil,
        phone_numbers: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_reference: String,
            phone_numbers: T::Array[Telnyx::ReservedPhoneNumber],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
