# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailDomains
      # Per-domain webhook endpoints with event subscriptions
      class Webhooks
        # Creates a webhook endpoint subscribed to a specific allowlist of event types.
        # Both `email.*` events (published by email-api) and `email_domain.*` events
        # (published by this service) flow through the same webhooks.
        #
        # @overload create(domain_id, events:, url:, request_options: {})
        #
        # @param domain_id [String] Email domain UUID
        #
        # @param events [Array<Symbol, Telnyx::Models::EmailDomains::EmailWebhookEvent>] At least one event type is required.
        #
        # @param url [String] HTTPS endpoint to deliver subscribed events to.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailDomains::EmailWebhookResponse]
        #
        # @see Telnyx::Models::EmailDomains::WebhookCreateParams
        def create(domain_id, params)
          parsed, options = Telnyx::EmailDomains::WebhookCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["email_domains/%1$s/webhooks", domain_id],
            body: parsed,
            model: Telnyx::EmailDomains::EmailWebhookResponse,
            options: options
          )
        end

        # Retrieve a webhook
        #
        # @overload retrieve(id, domain_id:, request_options: {})
        #
        # @param id [String] Email webhook UUID
        #
        # @param domain_id [String] Email domain UUID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailDomains::EmailWebhookResponse]
        #
        # @see Telnyx::Models::EmailDomains::WebhookRetrieveParams
        def retrieve(id, params)
          parsed, options = Telnyx::EmailDomains::WebhookRetrieveParams.dump_request(params)
          domain_id =
            parsed.delete(:domain_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["email_domains/%1$s/webhooks/%2$s", domain_id, id],
            model: Telnyx::EmailDomains::EmailWebhookResponse,
            options: options
          )
        end

        # Update a webhook's URL and/or event subscription. A webhook is bound to its
        # domain — `domain_id` is not mutable.
        #
        # @overload update(id, domain_id:, events: nil, url: nil, request_options: {})
        #
        # @param id [String] Path param: Email webhook UUID
        #
        # @param domain_id [String] Path param: Email domain UUID
        #
        # @param events [Array<Symbol, Telnyx::Models::EmailDomains::EmailWebhookEvent>] Body param
        #
        # @param url [String] Body param
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailDomains::EmailWebhookResponse]
        #
        # @see Telnyx::Models::EmailDomains::WebhookUpdateParams
        def update(id, params)
          parsed, options = Telnyx::EmailDomains::WebhookUpdateParams.dump_request(params)
          domain_id =
            parsed.delete(:domain_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["email_domains/%1$s/webhooks/%2$s", domain_id, id],
            body: parsed,
            model: Telnyx::EmailDomains::EmailWebhookResponse,
            options: options
          )
        end

        # List webhooks for an email domain
        #
        # @overload list(domain_id, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #
        # @param domain_id [String] Email domain UUID
        #
        # @param page_number [Integer] Page number to return (offset pagination)
        #
        # @param page_size [Integer] Number of records per page
        #
        # @param sort [Symbol, Telnyx::Models::EmailDomains::WebhookListParams::Sort] Field to sort by. Prefix with `-` for descending order.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::EmailDomains::EmailWebhook>]
        #
        # @see Telnyx::Models::EmailDomains::WebhookListParams
        def list(domain_id, params = {})
          parsed, options = Telnyx::EmailDomains::WebhookListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["email_domains/%1$s/webhooks", domain_id],
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::EmailDomains::EmailWebhook,
            options: options
          )
        end

        # Delete a webhook
        #
        # @overload delete(id, domain_id:, request_options: {})
        #
        # @param id [String] Email webhook UUID
        #
        # @param domain_id [String] Email domain UUID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailDomains::EmailWebhookResponse]
        #
        # @see Telnyx::Models::EmailDomains::WebhookDeleteParams
        def delete(id, params)
          parsed, options = Telnyx::EmailDomains::WebhookDeleteParams.dump_request(params)
          domain_id =
            parsed.delete(:domain_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["email_domains/%1$s/webhooks/%2$s", domain_id, id],
            model: Telnyx::EmailDomains::EmailWebhookResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
