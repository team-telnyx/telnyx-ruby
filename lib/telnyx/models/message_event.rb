# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailMessages#retrieve_events
    class MessageEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute canonical_event_type
      #   Additive canonical outcome name, prefixed with `email.`. Gateway rejection is
      #   `email.gw_reject`, ambiguous injection timeout is `email.injection_timeout`, and
      #   MTA expiration is `email.expired`. Unchanged outcomes retain their names.
      #   Existing stored rows are translated only when recorded payload evidence proves
      #   the outcome; a legacy failed row is not guessed or sharpened.
      #
      #   @return [String]
      required :canonical_event_type, String

      # @!attribute event_type
      #   Legacy customer-visible event name, prefixed with `email.`. Gateway rejections
      #   render `email.failed`; MTA expirations render `email.bounced`. Webhook
      #   subscription allowlists match the legacy name.
      #
      #   @return [String]
      required :event_type, String

      # @!attribute occurred_at
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute type
      #   @deprecated
      #
      #   Bare stored event names returned by message history. In addition to the normal
      #   send and delivery lifecycle, polling can expose suppression, scan, and
      #   quarantine lifecycle rows. Sharp canonical names gw_reject, injection_timeout,
      #   and expired distinguish gateway rejection, ambiguous injection timeout, and MTA
      #   expiration. The failed and bounced names remain valid for system/admin failures
      #   and hard bounces respectively. Existing stored rows retain their original names.
      #
      #   @return [Symbol, Telnyx::Models::EmailEventType]
      required :type, enum: -> { Telnyx::EmailEventType }

      # @!attribute payload
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :payload, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(canonical_event_type:, event_type:, occurred_at:, type:, payload: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessageEvent} for more details.
      #
      #   An event on the per-message events endpoint. The legacy event_type and additive
      #   canonical_event_type are email.-prefixed. The deprecated type preserves the bare
      #   stored event name for compatibility.
      #
      #   @param canonical_event_type [String] Additive canonical outcome name, prefixed with `email.`. Gateway rejection is `e
      #
      #   @param event_type [String] Legacy customer-visible event name, prefixed with `email.`. Gateway rejections r
      #
      #   @param occurred_at [Time]
      #
      #   @param type [Symbol, Telnyx::Models::EmailEventType] Bare stored event names returned by message history. In addition to the normal s
      #
      #   @param payload [Hash{Symbol=>Object}]
    end
  end
end
