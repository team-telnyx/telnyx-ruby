# frozen_string_literal: true

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

      QUEUED = :queued
      DEFERRED = :deferred
      SCHEDULED = :scheduled
      CANCELLED = :cancelled
      SANDBOX = :sandbox
      SENDING = :sending
      SENT = :sent
      FAILED = :failed
      DELIVERED = :delivered
      BOUNCED = :bounced
      COMPLAINED = :complained
      SUPPRESSED = :suppressed
      REJECTED = :rejected
      OPENED = :opened
      CLICKED = :clicked
      UNSUBSCRIBED = :unsubscribed
      DAILY_LIMIT_EXCEEDED = :daily_limit_exceeded
      SCAN_DEFERRED = :scan_deferred
      QUARANTINED = :quarantined
      QUARANTINE_RELEASED = :quarantine_released
      QUARANTINE_RELEASE_DISPATCHED = :quarantine_release_dispatched
      QUARANTINE_REJECTED = :quarantine_rejected
      QUARANTINE_EXPIRED = :quarantine_expired
      GW_REJECT = :gw_reject
      INJECTION_TIMEOUT = :injection_timeout
      EXPIRED = :expired

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
