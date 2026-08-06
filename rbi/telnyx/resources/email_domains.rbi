# typed: strong

module Telnyx
  module Resources
    class EmailDomains
      # Per-domain webhook endpoints with event subscriptions
      sig { returns(Telnyx::Resources::EmailDomains::Webhooks) }
      attr_reader :webhooks

      # Registers a domain for email sending and optional inbound delivery. The response
      # includes the domain configuration and current verification state.
      sig do
        params(
          domain: String,
          dmarc_policy: T.nilable(Telnyx::EmailDmarcPolicy::OrHash),
          inbound_enabled: T::Boolean,
          tracking: Telnyx::DomainsTrackingSettings::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailDomainResponse)
      end
      def create(
        domain:,
        # DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
        # record. DMARC is advisory and never blocks sending. When omitted or null, the
        # domain uses the advisory default (v=DMARC1; p=none;
        # rua=mailto:dmarc@telnyx.com).
        dmarc_policy: nil,
        # Enable inbound routing for this domain
        inbound_enabled: nil,
        tracking: nil,
        request_options: {}
      )
      end

      # Shared (`type: shared`) Telnyx-managed domains are included/readable for every
      # account, in addition to the account's own custom domains.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailDomainResponse)
      end
      def retrieve(
        # Email domain UUID
        id,
        request_options: {}
      )
      end

      # Updates mutable settings for an existing email domain, including inbound
      # delivery and tracking configuration. Shared domains are read-only for non-owner
      # accounts.
      sig do
        params(
          id: String,
          dmarc_policy: T.nilable(Telnyx::EmailDmarcPolicy::OrHash),
          inbound_enabled: T::Boolean,
          tracking: Telnyx::DomainsTrackingSettings::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailDomainResponse)
      end
      def update(
        # Email domain UUID
        id,
        # DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
        # record. DMARC is advisory and never blocks sending. When omitted or null, the
        # domain uses the advisory default (v=DMARC1; p=none;
        # rua=mailto:dmarc@telnyx.com).
        dmarc_policy: nil,
        # Enable or disable inbound routing for this domain
        inbound_enabled: nil,
        tracking: nil,
        request_options: {}
      )
      end

      # Shared (`type: shared`) Telnyx-managed domains are included/readable for every
      # account, in addition to the account's own custom domains.
      sig do
        params(
          filter_domain: String,
          filter_profile_id: String,
          filter_status: Telnyx::EmailDomainStatus::OrSymbol,
          filter_type: Telnyx::EmailDomainType::OrSymbol,
          filter_usable_for_inbound: T::Boolean,
          filter_usable_for_sending: T::Boolean,
          page_after: String,
          page_before: String,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::EmailDomainListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::EmailDomain])
      end
      def list(
        # Partial match on domain name (case-insensitive)
        filter_domain: nil,
        # Filter by profile UUID
        filter_profile_id: nil,
        filter_status: nil,
        filter_type: nil,
        filter_usable_for_inbound: nil,
        filter_usable_for_sending: nil,
        # Cursor for records after the provided value (cursor pagination)
        page_after: nil,
        # Cursor for records before the provided value (cursor pagination)
        page_before: nil,
        # Page number to return (offset pagination)
        page_number: nil,
        # Number of records per page
        page_size: nil,
        # Field to sort by. Prefix with `-` for descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Deletes an email domain configuration. Verified domains require `force=true`,
      # and shared domains are read-only for non-owner accounts.
      sig do
        params(
          id: String,
          force: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailDomainResponse)
      end
      def delete(
        # Email domain UUID
        id,
        # Required as true when deleting verified domains
        force: nil,
        request_options: {}
      )
      end

      # Returns the DNS records Telnyx generated for domain ownership and DKIM
      # verification, plus MX records when inbound delivery is enabled.
      sig do
        params(
          domain_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EmailDomainRetrieveDNSRecordsResponse)
      end
      def retrieve_dns_records(
        # Email domain UUID
        domain_id,
        request_options: {}
      )
      end

      # Returns a summary of domain health including verification status and usability.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EmailDomainRetrieveHealthResponse)
      end
      def retrieve_health(
        # Email domain UUID
        id,
        request_options: {}
      )
      end

      # Checks the published DNS records against the records required for the email
      # domain and returns the latest verification results.
      sig do
        params(
          domain_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailDomainResponse)
      end
      def verify(
        # Email domain UUID
        domain_id,
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
