# typed: strong

module Telnyx
  module Models
    class BookAppointmentToolParams < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::BookAppointmentToolParams, Telnyx::Internal::AnyHash)
        end

      # Reference to an integration secret that contains your Cal.com API key. You would
      # pass the `identifier` for an integration secret
      # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
      # that refers to your Cal.com API key.
      sig { returns(String) }
      attr_accessor :api_key_ref

      # Event Type ID for which slots are being fetched.
      # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-event-type-id)
      sig { returns(Integer) }
      attr_accessor :event_type_id

      # The name of the attendee
      # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-name).
      # If not provided, the assistant will ask for the attendee's name.
      sig { returns(T.nilable(String)) }
      attr_reader :attendee_name

      sig { params(attendee_name: String).void }
      attr_writer :attendee_name

      # The timezone of the attendee
      # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-timezone).
      # If not provided, the assistant will ask for the attendee's timezone.
      sig { returns(T.nilable(String)) }
      attr_reader :attendee_timezone

      sig { params(attendee_timezone: String).void }
      attr_writer :attendee_timezone

      sig do
        params(
          api_key_ref: String,
          event_type_id: Integer,
          attendee_name: String,
          attendee_timezone: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Reference to an integration secret that contains your Cal.com API key. You would
        # pass the `identifier` for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # that refers to your Cal.com API key.
        api_key_ref:,
        # Event Type ID for which slots are being fetched.
        # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-event-type-id)
        event_type_id:,
        # The name of the attendee
        # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-name).
        # If not provided, the assistant will ask for the attendee's name.
        attendee_name: nil,
        # The timezone of the attendee
        # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-timezone).
        # If not provided, the assistant will ask for the attendee's timezone.
        attendee_timezone: nil
      )
      end

      sig do
        override.returns(
          {
            api_key_ref: String,
            event_type_id: Integer,
            attendee_name: String,
            attendee_timezone: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
