# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Verifications#trigger_call
    class VerificationTriggerCallParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute phone_number
      #   +E164 formatted phone number.
      #
      #   @return [String]
      required :phone_number, String

      # @!attribute verify_profile_id
      #   The identifier of the associated Verify profile.
      #
      #   @return [String]
      required :verify_profile_id, String

      # @!attribute custom_code
      #   Send a self-generated numeric code to the end-user
      #
      #   @return [String, nil]
      optional :custom_code, String, nil?: true

      # @!attribute extension
      #   Optional extension to dial after call is answered using DTMF digits. Valid
      #   digits are 0-9, A-D, \*, and #. Pauses can be added using w (0.5s) and W (1s).
      #
      #   @return [String, nil]
      optional :extension, String, nil?: true

      # @!attribute timeout_secs
      #   The number of seconds the verification code is valid for.
      #
      #   @return [Integer, nil]
      optional :timeout_secs, Integer

      # @!method initialize(phone_number:, verify_profile_id:, custom_code: nil, extension: nil, timeout_secs: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VerificationTriggerCallParams} for more details.
      #
      #   @param phone_number [String] +E164 formatted phone number.
      #
      #   @param verify_profile_id [String] The identifier of the associated Verify profile.
      #
      #   @param custom_code [String, nil] Send a self-generated numeric code to the end-user
      #
      #   @param extension [String, nil] Optional extension to dial after call is answered using DTMF digits. Valid digit
      #
      #   @param timeout_secs [Integer] The number of seconds the verification code is valid for.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
