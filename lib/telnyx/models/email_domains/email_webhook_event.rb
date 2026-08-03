# frozen_string_literal: true

module Telnyx
  module Models
    module EmailDomains
      # Event types a webhook may subscribe to. The union of email._ events (published
      # by email-api) and email_domain._ lifecycle events (published by this service).
      # An event not listed here can never be subscribed to and is silently dropped.
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
        EMAIL_DOMAIN_CREATED = :"email_domain.created"
        EMAIL_DOMAIN_VERIFIED = :"email_domain.verified"
        EMAIL_DOMAIN_DEGRADED = :"email_domain.degraded"
        EMAIL_DOMAIN_SUSPENDED = :"email_domain.suspended"
        EMAIL_DOMAIN_DELETED = :"email_domain.deleted"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
