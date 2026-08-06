# typed: strong

module Telnyx
  module Resources
    class EmailDomains
      # Per-domain webhook endpoints with event subscriptions
      class Webhooks
        # Creates a webhook endpoint subscribed to a specific allowlist of event types.
        # Both `email.*` events (published by email-api) and `email_domain.*` events
        # (published by this service) flow through the same webhooks.
        sig do
          params(
            domain_id: String,
            events: T::Array[Telnyx::EmailDomains::EmailWebhookEvent::OrSymbol],
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::EmailDomains::EmailWebhookResponse)
        end
        def create(
          # Email domain UUID
          domain_id,
          # At least one event type is required.
          events:,
          # HTTPS endpoint to deliver subscribed events to.
          url:,
          request_options: {}
        )
        end

        # Returns the webhook subscription identified by ID within the specified email
        # domain.
        sig do
          params(
            id: String,
            domain_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::EmailDomains::EmailWebhookResponse)
        end
        def retrieve(
          # Email webhook UUID
          id,
          # Email domain UUID
          domain_id:,
          request_options: {}
        )
        end

        # Update a webhook's URL and/or event subscription. A webhook is bound to its
        # domain — `domain_id` is not mutable.
        sig do
          params(
            id: String,
            domain_id: String,
            events: T::Array[Telnyx::EmailDomains::EmailWebhookEvent::OrSymbol],
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::EmailDomains::EmailWebhookResponse)
        end
        def update(
          # Path param: Email webhook UUID
          id,
          # Path param: Email domain UUID
          domain_id:,
          # Body param
          events: nil,
          # Body param
          url: nil,
          request_options: {}
        )
        end

        # Returns a paginated list of webhook subscriptions scoped to the email domain.
        # Results can be sorted by creation time.
        sig do
          params(
            domain_id: String,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::EmailDomains::WebhookListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::EmailDomains::EmailWebhook
            ]
          )
        end
        def list(
          # Email domain UUID
          domain_id,
          # Page number to return (offset pagination)
          page_number: nil,
          # Number of records per page
          page_size: nil,
          # Field to sort by. Prefix with `-` for descending order.
          sort: nil,
          request_options: {}
        )
        end

        # Deletes the webhook subscription identified by ID within the specified email
        # domain and returns the deleted subscription.
        sig do
          params(
            id: String,
            domain_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::EmailDomains::EmailWebhookResponse)
        end
        def delete(
          # Email webhook UUID
          id,
          # Email domain UUID
          domain_id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
