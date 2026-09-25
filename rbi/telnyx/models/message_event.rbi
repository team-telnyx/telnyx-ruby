# typed: strong

module Telnyx
  module Models
    class MessageEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::MessageEvent, Telnyx::Internal::AnyHash) }

      # Additive canonical outcome name, prefixed with `email.`. Gateway rejection is
      # `email.gw_reject`, ambiguous injection timeout is `email.injection_timeout`, and
      # MTA expiration is `email.expired`. Unchanged outcomes retain their names.
      # Existing stored rows are translated only when recorded payload evidence proves
      # the outcome; a legacy failed row is not guessed or sharpened.
      sig { returns(String) }
      attr_accessor :canonical_event_type

      # Legacy customer-visible event name, prefixed with `email.`. Gateway rejections
      # render `email.failed`; MTA expirations render `email.bounced`. Webhook
      # subscription allowlists match the legacy name.
      sig { returns(String) }
      attr_accessor :event_type

      sig { returns(Time) }
      attr_accessor :occurred_at

      # Bare stored event names returned by message history. In addition to the normal
      # send and delivery lifecycle, polling can expose suppression, scan, and
      # quarantine lifecycle rows. Sharp canonical names gw_reject, injection_timeout,
      # and expired distinguish gateway rejection, ambiguous injection timeout, and MTA
      # expiration. The failed and bounced names remain valid for system/admin failures
      # and hard bounces respectively. Existing stored rows retain their original names.
      sig { returns(Telnyx::EmailEventType::TaggedSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :payload

      sig { params(payload: T::Hash[Symbol, T.anything]).void }
      attr_writer :payload

      # An event on the per-message events endpoint. The legacy event_type and additive
      # canonical_event_type are email.-prefixed. The deprecated type preserves the bare
      # stored event name for compatibility.
      sig do
        params(
          canonical_event_type: String,
          event_type: String,
          occurred_at: Time,
          type: Telnyx::EmailEventType::OrSymbol,
          payload: T::Hash[Symbol, T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        # Additive canonical outcome name, prefixed with `email.`. Gateway rejection is
        # `email.gw_reject`, ambiguous injection timeout is `email.injection_timeout`, and
        # MTA expiration is `email.expired`. Unchanged outcomes retain their names.
        # Existing stored rows are translated only when recorded payload evidence proves
        # the outcome; a legacy failed row is not guessed or sharpened.
        canonical_event_type:,
        # Legacy customer-visible event name, prefixed with `email.`. Gateway rejections
        # render `email.failed`; MTA expirations render `email.bounced`. Webhook
        # subscription allowlists match the legacy name.
        event_type:,
        occurred_at:,
        # Bare stored event names returned by message history. In addition to the normal
        # send and delivery lifecycle, polling can expose suppression, scan, and
        # quarantine lifecycle rows. Sharp canonical names gw_reject, injection_timeout,
        # and expired distinguish gateway rejection, ambiguous injection timeout, and MTA
        # expiration. The failed and bounced names remain valid for system/admin failures
        # and hard bounces respectively. Existing stored rows retain their original names.
        type:,
        payload: nil
      )
      end

      sig do
        override.returns(
          {
            canonical_event_type: String,
            event_type: String,
            occurred_at: Time,
            type: Telnyx::EmailEventType::TaggedSymbol,
            payload: T::Hash[Symbol, T.anything]
          }
        )
      end
      def to_hash
      end
    end
  end
end
