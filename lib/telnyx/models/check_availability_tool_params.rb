# frozen_string_literal: true

module Telnyx
  module Models
    class CheckAvailabilityToolParams < Telnyx::Internal::Type::BaseModel
      # @!attribute api_key_ref
      #   Reference to an integration secret that contains your Cal.com API key. You would
      #   pass the `identifier` for an integration secret
      #   [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
      #   that refers to your Cal.com API key.
      #
      #   @return [String]
      required :api_key_ref, String

      # @!attribute event_type_id
      #   Event Type ID for which slots are being fetched.
      #   [cal.com](https://cal.com/docs/api-reference/v2/slots/get-available-slots#parameter-event-type-id)
      #
      #   @return [Integer]
      required :event_type_id, Integer

      # @!method initialize(api_key_ref:, event_type_id:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CheckAvailabilityToolParams} for more details.
      #
      #   @param api_key_ref [String] Reference to an integration secret that contains your Cal.com API key. You would
      #
      #   @param event_type_id [Integer] Event Type ID for which slots are being fetched. [cal.com](https://cal.com/docs/
    end
  end
end
