# typed: strong

module Telnyx
  module Models
    # Bare stored event names returned by message history. In addition to the normal
    # send and delivery lifecycle, polling can expose suppression, scan, and
    # quarantine lifecycle rows. Sharp canonical names gw_reject, injection_timeout,
    # and expired distinguish gateway rejection, ambiguous injection timeout, and MTA
    # expiration. The failed and bounced names remain valid for system/admin failures
    # and hard bounces respectively. Existing stored rows retain their original names.
    module EmailEventType
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::EmailEventType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      QUEUED = T.let(:queued, Telnyx::EmailEventType::TaggedSymbol)
      DEFERRED = T.let(:deferred, Telnyx::EmailEventType::TaggedSymbol)
      SCHEDULED = T.let(:scheduled, Telnyx::EmailEventType::TaggedSymbol)
      CANCELLED = T.let(:cancelled, Telnyx::EmailEventType::TaggedSymbol)
      SANDBOX = T.let(:sandbox, Telnyx::EmailEventType::TaggedSymbol)
      SENDING = T.let(:sending, Telnyx::EmailEventType::TaggedSymbol)
      SENT = T.let(:sent, Telnyx::EmailEventType::TaggedSymbol)
      FAILED = T.let(:failed, Telnyx::EmailEventType::TaggedSymbol)
      DELIVERED = T.let(:delivered, Telnyx::EmailEventType::TaggedSymbol)
      BOUNCED = T.let(:bounced, Telnyx::EmailEventType::TaggedSymbol)
      COMPLAINED = T.let(:complained, Telnyx::EmailEventType::TaggedSymbol)
      SUPPRESSED = T.let(:suppressed, Telnyx::EmailEventType::TaggedSymbol)
      REJECTED = T.let(:rejected, Telnyx::EmailEventType::TaggedSymbol)
      OPENED = T.let(:opened, Telnyx::EmailEventType::TaggedSymbol)
      CLICKED = T.let(:clicked, Telnyx::EmailEventType::TaggedSymbol)
      UNSUBSCRIBED = T.let(:unsubscribed, Telnyx::EmailEventType::TaggedSymbol)
      DAILY_LIMIT_EXCEEDED =
        T.let(:daily_limit_exceeded, Telnyx::EmailEventType::TaggedSymbol)
      SCAN_DEFERRED =
        T.let(:scan_deferred, Telnyx::EmailEventType::TaggedSymbol)
      QUARANTINED = T.let(:quarantined, Telnyx::EmailEventType::TaggedSymbol)
      QUARANTINE_RELEASED =
        T.let(:quarantine_released, Telnyx::EmailEventType::TaggedSymbol)
      QUARANTINE_RELEASE_DISPATCHED =
        T.let(
          :quarantine_release_dispatched,
          Telnyx::EmailEventType::TaggedSymbol
        )
      QUARANTINE_REJECTED =
        T.let(:quarantine_rejected, Telnyx::EmailEventType::TaggedSymbol)
      QUARANTINE_EXPIRED =
        T.let(:quarantine_expired, Telnyx::EmailEventType::TaggedSymbol)
      GW_REJECT = T.let(:gw_reject, Telnyx::EmailEventType::TaggedSymbol)
      INJECTION_TIMEOUT =
        T.let(:injection_timeout, Telnyx::EmailEventType::TaggedSymbol)
      EXPIRED = T.let(:expired, Telnyx::EmailEventType::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::EmailEventType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
