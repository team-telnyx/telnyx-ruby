# typed: strong

module Telnyx
  module Models
    class VerificationTriggerCallParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VerificationTriggerCallParams,
            Telnyx::Internal::AnyHash
          )
        end

      # +E164 formatted phone number.
      sig { returns(String) }
      attr_accessor :phone_number

      # The identifier of the associated Verify profile.
      sig { returns(String) }
      attr_accessor :verify_profile_id

      # Send a self-generated numeric code to the end-user
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_code

      # Optional extension to dial after call is answered using DTMF digits. Valid
      # digits are 0-9, A-D, \*, and #. Pauses can be added using w (0.5s) and W (1s).
      sig { returns(T.nilable(String)) }
      attr_accessor :extension

      # The number of seconds the verification code is valid for.
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_secs

      sig { params(timeout_secs: Integer).void }
      attr_writer :timeout_secs

      sig do
        params(
          phone_number: String,
          verify_profile_id: String,
          custom_code: T.nilable(String),
          extension: T.nilable(String),
          timeout_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # +E164 formatted phone number.
        phone_number:,
        # The identifier of the associated Verify profile.
        verify_profile_id:,
        # Send a self-generated numeric code to the end-user
        custom_code: nil,
        # Optional extension to dial after call is answered using DTMF digits. Valid
        # digits are 0-9, A-D, \*, and #. Pauses can be added using w (0.5s) and W (1s).
        extension: nil,
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
            custom_code: T.nilable(String),
            extension: T.nilable(String),
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
