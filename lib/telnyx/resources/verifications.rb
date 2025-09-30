# frozen_string_literal: true

module Telnyx
  module Resources
    class Verifications
      # @return [Telnyx::Resources::Verifications::ByPhoneNumber]
      attr_reader :by_phone_number

      # @return [Telnyx::Resources::Verifications::Actions]
      attr_reader :actions

      # Retrieve verification
      #
      # @overload retrieve(verification_id, request_options: {})
      #
      # @param verification_id [String] The identifier of the verification to retrieve.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VerificationRetrieveResponse]
      #
      # @see Telnyx::Models::VerificationRetrieveParams
      def retrieve(verification_id, params = {})
        @client.request(
          method: :get,
          path: ["verifications/%1$s", verification_id],
          model: Telnyx::Models::VerificationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VerificationTriggerCallParams} for more details.
      #
      # Trigger Call verification
      #
      # @overload trigger_call(phone_number:, verify_profile_id:, custom_code: nil, extension: nil, timeout_secs: nil, request_options: {})
      #
      # @param phone_number [String] +E164 formatted phone number.
      #
      # @param verify_profile_id [String] The identifier of the associated Verify profile.
      #
      # @param custom_code [String, nil] Send a self-generated numeric code to the end-user
      #
      # @param extension [String, nil] Optional extension to dial after call is answered using DTMF digits. Valid digit
      #
      # @param timeout_secs [Integer] The number of seconds the verification code is valid for.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CreateVerificationResponse]
      #
      # @see Telnyx::Models::VerificationTriggerCallParams
      def trigger_call(params)
        parsed, options = Telnyx::VerificationTriggerCallParams.dump_request(params)
        @client.request(
          method: :post,
          path: "verifications/call",
          body: parsed,
          model: Telnyx::CreateVerificationResponse,
          options: options
        )
      end

      # Trigger Flash call verification
      #
      # @overload trigger_flashcall(phone_number:, verify_profile_id:, timeout_secs: nil, request_options: {})
      #
      # @param phone_number [String] +E164 formatted phone number.
      #
      # @param verify_profile_id [String] The identifier of the associated Verify profile.
      #
      # @param timeout_secs [Integer] The number of seconds the verification code is valid for.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CreateVerificationResponse]
      #
      # @see Telnyx::Models::VerificationTriggerFlashcallParams
      def trigger_flashcall(params)
        parsed, options = Telnyx::VerificationTriggerFlashcallParams.dump_request(params)
        @client.request(
          method: :post,
          path: "verifications/flashcall",
          body: parsed,
          model: Telnyx::CreateVerificationResponse,
          options: options
        )
      end

      # Trigger SMS verification
      #
      # @overload trigger_sms(phone_number:, verify_profile_id:, custom_code: nil, timeout_secs: nil, request_options: {})
      #
      # @param phone_number [String] +E164 formatted phone number.
      #
      # @param verify_profile_id [String] The identifier of the associated Verify profile.
      #
      # @param custom_code [String, nil] Send a self-generated numeric code to the end-user
      #
      # @param timeout_secs [Integer] The number of seconds the verification code is valid for.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CreateVerificationResponse]
      #
      # @see Telnyx::Models::VerificationTriggerSMSParams
      def trigger_sms(params)
        parsed, options = Telnyx::VerificationTriggerSMSParams.dump_request(params)
        @client.request(
          method: :post,
          path: "verifications/sms",
          body: parsed,
          model: Telnyx::CreateVerificationResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @by_phone_number = Telnyx::Resources::Verifications::ByPhoneNumber.new(client: client)
        @actions = Telnyx::Resources::Verifications::Actions.new(client: client)
      end
    end
  end
end
