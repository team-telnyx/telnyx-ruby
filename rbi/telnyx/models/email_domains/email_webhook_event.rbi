# typed: strong

module Telnyx
  module Models
    module EmailDomains
      # Event types a webhook may subscribe to. The union of email._ events (published
      # by email-api) and email_domain._ lifecycle events (published by this service).
      # An event not listed here can never be subscribed to and is silently dropped.
      module EmailWebhookEvent
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EmailDomains::EmailWebhookEvent)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_SCHEDULED =
          T.let(
            :"email.scheduled",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_SANDBOX =
          T.let(
            :"email.sandbox",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_QUEUED =
          T.let(
            :"email.queued",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_SENDING =
          T.let(
            :"email.sending",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_SENT =
          T.let(
            :"email.sent",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_DELIVERED =
          T.let(
            :"email.delivered",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_DEFERRED =
          T.let(
            :"email.deferred",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_BOUNCED =
          T.let(
            :"email.bounced",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_FAILED =
          T.let(
            :"email.failed",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_COMPLAINED =
          T.let(
            :"email.complained",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_OPENED =
          T.let(
            :"email.opened",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_CLICKED =
          T.let(
            :"email.clicked",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_UNSUBSCRIBED =
          T.let(
            :"email.unsubscribed",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_RECEIVED =
          T.let(
            :"email.received",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_DOMAIN_CREATED =
          T.let(
            :"email_domain.created",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_DOMAIN_VERIFIED =
          T.let(
            :"email_domain.verified",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_DOMAIN_DEGRADED =
          T.let(
            :"email_domain.degraded",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_DOMAIN_SUSPENDED =
          T.let(
            :"email_domain.suspended",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )
        EMAIL_DOMAIN_DELETED =
          T.let(
            :"email_domain.deleted",
            Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
