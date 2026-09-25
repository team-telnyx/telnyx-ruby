# frozen_string_literal: true

module Telnyx
  module Models
    module EmailDomains
      # Event types accepted by domain webhook subscriptions. Allowlists match the
      # legacy event_type, not canonical_event_type. Of the 22 accepted types,
      # email.sending is stored but intentionally not published. Cancellation,
      # daily-limit failures, and system failures publish after commit when a matching
      # domain webhook is configured.
      module EmailWebhookEvent
        extend Telnyx::Internal::Type::Enum

        EMAIL_SCHEDULED = :"email.scheduled"
        EMAIL_SANDBOX = :"email.sandbox"
        EMAIL_QUEUED = :"email.queued"
        EMAIL_SENDING = :"email.sending"
        EMAIL_SENT = :"email.sent"
        EMAIL_DELIVERED = :"email.delivered"
        EMAIL_DEFERRED = :"email.deferred"
        EMAIL_BOUNCED = :"email.bounced"
        EMAIL_FAILED = :"email.failed"
        EMAIL_COMPLAINED = :"email.complained"
        EMAIL_OPENED = :"email.opened"
        EMAIL_CLICKED = :"email.clicked"
        EMAIL_UNSUBSCRIBED = :"email.unsubscribed"
        EMAIL_RECEIVED = :"email.received"
        EMAIL_CANCELLED = :"email.cancelled"
        EMAIL_DAILY_LIMIT_EXCEEDED = :"email.daily_limit_exceeded"
        EMAIL_DOMAIN_CREATED = :"email_domain.created"
        EMAIL_DOMAIN_VERIFIED = :"email_domain.verified"
        EMAIL_DOMAIN_DEGRADED = :"email_domain.degraded"
        EMAIL_DOMAIN_SUSPENDED = :"email_domain.suspended"
        EMAIL_DOMAIN_DELETED = :"email_domain.deleted"
        EMAIL_DOMAIN_DKIM_ROTATED = :"email_domain.dkim_rotated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
