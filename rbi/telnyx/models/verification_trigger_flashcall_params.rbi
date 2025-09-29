# typed: strong

module Telnyx
  module Models
    class VerificationTriggerFlashcallParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VerificationTriggerFlashcallParams,
            Telnyx::Internal::AnyHash
          )
        end

      # +E164 formatted phone number.
      sig { returns(String) }
      attr_accessor :phone_number

      # The identifier of the associated Verify profile.
      sig { returns(String) }
      attr_accessor :verify_profile_id

      # The number of seconds the verification code is valid for.
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_secs

      sig { params(timeout_secs: Integer).void }
      attr_writer :timeout_secs

      sig do
        params(
          phone_number: String,
          verify_profile_id: String,
          timeout_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # +E164 formatted phone number.
        phone_number:,
        # The identifier of the associated Verify profile.
        verify_profile_id:,
        # The number of seconds the verification code is valid for.
        timeout_secs: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            phone_number: String,
            verify_profile_id: String,
            timeout_secs: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
