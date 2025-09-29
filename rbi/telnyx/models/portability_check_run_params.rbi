# typed: strong

module Telnyx
  module Models
    class PortabilityCheckRunParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PortabilityCheckRunParams, Telnyx::Internal::AnyHash)
        end

      # The list of +E.164 formatted phone numbers to check for portability
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :phone_numbers

      sig { params(phone_numbers: T::Array[String]).void }
      attr_writer :phone_numbers

      sig do
        params(
          phone_numbers: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The list of +E.164 formatted phone numbers to check for portability
        phone_numbers: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
