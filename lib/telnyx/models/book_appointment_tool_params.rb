# frozen_string_literal: true

module Telnyx
  module Models
    class BookAppointmentToolParams < Telnyx::Internal::Type::BaseModel
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
      #   [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-event-type-id)
      #
      #   @return [Integer]
      required :event_type_id, Integer

      # @!attribute attendee_name
      #   The name of the attendee
      #   [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-name).
      #   If not provided, the assistant will ask for the attendee's name.
      #
      #   @return [String, nil]
      optional :attendee_name, String

      # @!attribute attendee_timezone
      #   The timezone of the attendee
      #   [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-timezone).
      #   If not provided, the assistant will ask for the attendee's timezone.
      #
      #   @return [String, nil]
      optional :attendee_timezone, String

      # @!method initialize(api_key_ref:, event_type_id:, attendee_name: nil, attendee_timezone: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::BookAppointmentToolParams} for more details.
      #
      #   @param api_key_ref [String] Reference to an integration secret that contains your Cal.com API key. You would
      #
      #   @param event_type_id [Integer] Event Type ID for which slots are being fetched. [cal.com](https://cal.com/docs/
      #
      #   @param attendee_name [String] The name of the attendee [cal.com](https://cal.com/docs/api-reference/v2/booking
      #
      #   @param attendee_timezone [String] The timezone of the attendee [cal.com](https://cal.com/docs/api-reference/v2/boo
    end
  end
end
