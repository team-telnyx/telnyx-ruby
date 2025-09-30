# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Verifications#trigger_flashcall
    class VerificationTriggerFlashcallParams < Telnyx::Internal::Type::BaseModel
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

      # @!attribute timeout_secs
      #   The number of seconds the verification code is valid for.
      #
      #   @return [Integer, nil]
      optional :timeout_secs, Integer

      # @!method initialize(phone_number:, verify_profile_id:, timeout_secs: nil, request_options: {})
      #   @param phone_number [String] +E164 formatted phone number.
      #
      #   @param verify_profile_id [String] The identifier of the associated Verify profile.
      #
      #   @param timeout_secs [Integer] The number of seconds the verification code is valid for.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
