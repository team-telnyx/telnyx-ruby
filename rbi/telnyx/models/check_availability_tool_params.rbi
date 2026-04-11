# typed: strong

module Telnyx
  module Models
    class CheckAvailabilityToolParams < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CheckAvailabilityToolParams, Telnyx::Internal::AnyHash)
        end

      # Reference to an integration secret that contains your Cal.com API key. You would
      # pass the `identifier` for an integration secret
      # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
      # that refers to your Cal.com API key.
      sig { returns(String) }
      attr_accessor :api_key_ref

      # Event Type ID for which slots are being fetched.
      # [cal.com](https://cal.com/docs/api-reference/v2/slots/get-available-slots#parameter-event-type-id)
      sig { returns(Integer) }
      attr_accessor :event_type_id

      sig do
        params(api_key_ref: String, event_type_id: Integer).returns(
          T.attached_class
        )
      end
      def self.new(
        # Reference to an integration secret that contains your Cal.com API key. You would
        # pass the `identifier` for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # that refers to your Cal.com API key.
        api_key_ref:,
        # Event Type ID for which slots are being fetched.
        # [cal.com](https://cal.com/docs/api-reference/v2/slots/get-available-slots#parameter-event-type-id)
        event_type_id:
      )
      end

      sig { override.returns({ api_key_ref: String, event_type_id: Integer }) }
      def to_hash
      end
    end
  end
end
