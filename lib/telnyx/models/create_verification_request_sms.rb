# frozen_string_literal: true

module Telnyx
  module Models
    class CreateVerificationRequestSMS < Telnyx::Internal::Type::BaseModel
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

      # @!attribute timeout_secs
      #   The number of seconds the verification code is valid for.
      #
      #   @return [Integer, nil]
      optional :timeout_secs, Integer

      # @!method initialize(phone_number:, verify_profile_id:, custom_code: nil, timeout_secs: nil)
      #   The request body when creating a verification.
      #
      #   @param phone_number [String] +E164 formatted phone number.
      #
      #   @param verify_profile_id [String] The identifier of the associated Verify profile.
      #
      #   @param custom_code [String, nil] Send a self-generated numeric code to the end-user
      #
      #   @param timeout_secs [Integer] The number of seconds the verification code is valid for.
    end
  end
end
