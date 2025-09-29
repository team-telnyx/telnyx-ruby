# typed: strong

module Telnyx
  module Resources
    class Verifications
      sig { returns(Telnyx::Resources::Verifications::ByPhoneNumber) }
      attr_reader :by_phone_number

      sig { returns(Telnyx::Resources::Verifications::Actions) }
      attr_reader :actions

      # Retrieve verification
      sig do
        params(
          verification_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VerificationRetrieveResponse)
      end
      def retrieve(
        # The identifier of the verification to retrieve.
        verification_id,
        request_options: {}
      )
      end

      # Trigger Call verification
      sig do
        params(
          phone_number: String,
          verify_profile_id: String,
          custom_code: T.nilable(String),
          extension: T.nilable(String),
          timeout_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::CreateVerificationResponse)
      end
      def trigger_call(
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

      # Trigger Flash call verification
      sig do
        params(
          phone_number: String,
          verify_profile_id: String,
          timeout_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::CreateVerificationResponse)
      end
      def trigger_flashcall(
        # +E164 formatted phone number.
        phone_number:,
        # The identifier of the associated Verify profile.
        verify_profile_id:,
        # The number of seconds the verification code is valid for.
        timeout_secs: nil,
        request_options: {}
      )
      end

      # Trigger SMS verification
      sig do
        params(
          phone_number: String,
          verify_profile_id: String,
          custom_code: T.nilable(String),
          timeout_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::CreateVerificationResponse)
      end
      def trigger_sms(
        # +E164 formatted phone number.
        phone_number:,
        # The identifier of the associated Verify profile.
        verify_profile_id:,
        # Send a self-generated numeric code to the end-user
        custom_code: nil,
        # The number of seconds the verification code is valid for.
        timeout_secs: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
