# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailDomains
      # Per-domain webhook endpoints with event subscriptions
      # @return [Telnyx::Resources::EmailDomains::Webhooks]
      attr_reader :webhooks

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailDomainCreateParams} for more details.
      #
      # Registers a domain for email sending and optional inbound delivery. The response
      # includes the domain configuration and current verification state.
      #
      # @overload create(domain:, dmarc_policy: nil, inbound_enabled: nil, tracking: nil, request_options: {})
      #
      # @param domain [String]
      #
      # @param dmarc_policy [Telnyx::Models::EmailDmarcPolicy, nil] DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
      # re
      #
      # @param inbound_enabled [Boolean] Enable inbound routing for this domain
      #
      # @param tracking [Telnyx::Models::DomainsTrackingSettings]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailDomainResponse]
      #
      # @see Telnyx::Models::EmailDomainCreateParams
      def create(params)
        parsed, options = Telnyx::EmailDomainCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "email_domains",
          body: parsed,
          model: Telnyx::EmailDomainResponse,
          options: options
        )
      end

      # Shared (`type: shared`) Telnyx-managed domains are included/readable for every
      # account, in addition to the account's own custom domains.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Email domain UUID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailDomainResponse]
      #
      # @see Telnyx::Models::EmailDomainRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["email_domains/%1$s", id],
          model: Telnyx::EmailDomainResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailDomainUpdateParams} for more details.
      #
      # Updates mutable settings for an existing email domain, including inbound
      # delivery and tracking configuration. Shared domains are read-only for non-owner
      # accounts.
      #
      # @overload update(id, dmarc_policy: nil, inbound_enabled: nil, tracking: nil, request_options: {})
      #
      # @param id [String] Email domain UUID
      #
      # @param dmarc_policy [Telnyx::Models::EmailDmarcPolicy, nil] DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
      # re
      #
      # @param inbound_enabled [Boolean] Enable or disable inbound routing for this domain
      #
      # @param tracking [Telnyx::Models::DomainsTrackingSettings]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailDomainResponse]
      #
      # @see Telnyx::Models::EmailDomainUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::EmailDomainUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["email_domains/%1$s", id],
          body: parsed,
          model: Telnyx::EmailDomainResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailDomainListParams} for more details.
      #
      # Shared (`type: shared`) Telnyx-managed domains are included/readable for every
      # account, in addition to the account's own custom domains.
      #
      # @overload list(filter_domain: nil, filter_profile_id: nil, filter_status: nil, filter_type: nil, filter_usable_for_inbound: nil, filter_usable_for_sending: nil, page_after: nil, page_before: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter_domain [String] Partial match on domain name (case-insensitive)
      #
      # @param filter_profile_id [String] Filter by profile UUID
      #
      # @param filter_status [Symbol, Telnyx::Models::EmailDomainStatus] Filter domains by verification status: pending, verifying, verified, failed, deg
      #
      # @param filter_type [Symbol, Telnyx::Models::EmailDomainType] Filter domains by type: custom, shared, or shared_inbound.
      #
      # @param filter_usable_for_inbound [Boolean] Filter domains by whether they can currently receive inbound email.
      #
      # @param filter_usable_for_sending [Boolean] Filter domains by whether they can currently be used to send email.
      #
      # @param page_after [String] Cursor for records after the provided value (cursor pagination)
      #
      # @param page_before [String] Cursor for records before the provided value (cursor pagination)
      #
      # @param page_number [Integer] Page number to return (offset pagination)
      #
      # @param page_size [Integer] Number of records per page
      #
      # @param sort [Symbol, Telnyx::Models::EmailDomainListParams::Sort] Field to sort by. Prefix with `-` for descending order.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::EmailDomain>]
      #
      # @see Telnyx::Models::EmailDomainListParams
      def list(params = {})
        parsed, options = Telnyx::EmailDomainListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "email_domains",
          query: query.transform_keys(
            filter_domain: "filter[domain]",
            filter_profile_id: "filter[profile_id]",
            filter_status: "filter[status]",
            filter_type: "filter[type]",
            filter_usable_for_inbound: "filter[usable_for_inbound]",
            filter_usable_for_sending: "filter[usable_for_sending]",
            page_after: "page[after]",
            page_before: "page[before]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::EmailDomain,
          options: options
        )
      end

      # Deletes an email domain configuration. Verified domains require `force=true`,
      # and shared domains are read-only for non-owner accounts.
      #
      # @overload delete(id, force: nil, request_options: {})
      #
      # @param id [String] Email domain UUID
      #
      # @param force [Boolean] Required as true when deleting verified domains
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailDomainResponse]
      #
      # @see Telnyx::Models::EmailDomainDeleteParams
      def delete(id, params = {})
        parsed, options = Telnyx::EmailDomainDeleteParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :delete,
          path: ["email_domains/%1$s", id],
          query: query,
          model: Telnyx::EmailDomainResponse,
          options: options
        )
      end

      # Returns the DNS records Telnyx generated for domain ownership and DKIM
      # verification, plus MX records when inbound delivery is enabled.
      #
      # @overload retrieve_dns_records(domain_id, request_options: {})
      #
      # @param domain_id [String] Email domain UUID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailDomainRetrieveDNSRecordsResponse]
      #
      # @see Telnyx::Models::EmailDomainRetrieveDNSRecordsParams
      def retrieve_dns_records(domain_id, params = {})
        @client.request(
          method: :get,
          path: ["email_domains/%1$s/dns_records", domain_id],
          model: Telnyx::Models::EmailDomainRetrieveDNSRecordsResponse,
          options: params[:request_options]
        )
      end

      # Returns a summary of domain health including verification status and usability.
      #
      # @overload retrieve_health(id, request_options: {})
      #
      # @param id [String] Email domain UUID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailDomainRetrieveHealthResponse]
      #
      # @see Telnyx::Models::EmailDomainRetrieveHealthParams
      def retrieve_health(id, params = {})
        @client.request(
          method: :get,
          path: ["email_domains/%1$s/health", id],
          model: Telnyx::Models::EmailDomainRetrieveHealthResponse,
          options: params[:request_options]
        )
      end

      # Checks the published DNS records against the records required for the email
      # domain and returns the latest verification results.
      #
      # @overload verify(domain_id, request_options: {})
      #
      # @param domain_id [String] Email domain UUID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailDomainResponse]
      #
      # @see Telnyx::Models::EmailDomainVerifyParams
      def verify(domain_id, params = {})
        @client.request(
          method: :post,
          path: ["email_domains/%1$s/verify", domain_id],
          model: Telnyx::EmailDomainResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @webhooks = Telnyx::Resources::EmailDomains::Webhooks.new(client: client)
      end
    end
  end
end
