# typed: strong

module Telnyx
  module Models
    class PortingOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderCreateParams, Telnyx::Internal::AnyHash)
        end

      # The list of +E.164 formatted phone numbers
      sig { returns(T::Array[String]) }
      attr_accessor :phone_numbers

      # A customer-specified group reference for customer bookkeeping purposes
      sig { returns(T.nilable(String)) }
      attr_reader :customer_group_reference

      sig { params(customer_group_reference: String).void }
      attr_writer :customer_group_reference

      # A customer-specified reference number for customer bookkeeping purposes
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_reference

      sig do
        params(
          phone_numbers: T::Array[String],
          customer_group_reference: String,
          customer_reference: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The list of +E.164 formatted phone numbers
        phone_numbers:,
        # A customer-specified group reference for customer bookkeeping purposes
        customer_group_reference: nil,
        # A customer-specified reference number for customer bookkeeping purposes
        customer_reference: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            phone_numbers: T::Array[String],
            customer_group_reference: String,
            customer_reference: T.nilable(String),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
