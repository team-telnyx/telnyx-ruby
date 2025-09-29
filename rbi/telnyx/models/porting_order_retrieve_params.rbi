# typed: strong

module Telnyx
  module Models
    class PortingOrderRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderRetrieveParams, Telnyx::Internal::AnyHash)
        end

      # Include the first 50 phone number objects in the results
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_phone_numbers

      sig { params(include_phone_numbers: T::Boolean).void }
      attr_writer :include_phone_numbers

      sig do
        params(
          include_phone_numbers: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Include the first 50 phone number objects in the results
        include_phone_numbers: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include_phone_numbers: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
