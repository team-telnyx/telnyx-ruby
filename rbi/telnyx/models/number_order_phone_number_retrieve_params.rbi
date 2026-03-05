# typed: strong

module Telnyx
  module Models
    class NumberOrderPhoneNumberRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NumberOrderPhoneNumberRetrieveParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :number_order_phone_number_id

      sig do
        params(
          number_order_phone_number_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(number_order_phone_number_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            number_order_phone_number_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
