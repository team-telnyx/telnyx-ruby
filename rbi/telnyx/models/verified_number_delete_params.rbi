# typed: strong

module Telnyx
  module Models
    class VerifiedNumberDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VerifiedNumberDeleteParams, Telnyx::Internal::AnyHash)
        end

      # +E164 formatted phone number.
      sig { returns(String) }
      attr_accessor :phone_number

      sig do
        params(
          phone_number: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # +E164 formatted phone number.
        phone_number:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { phone_number: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
