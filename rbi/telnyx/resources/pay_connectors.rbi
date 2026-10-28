# typed: strong

module Telnyx
  module Resources
    # Generic payment connector configuration.
    class PayConnectors
      # Create a generic payment connector in the authenticated organization. The name
      # must be unique in that organization. Authentication supplies ownership; do not
      # send user_id or organization_id. Config is encrypted at rest; passwords and
      # tokens are omitted from responses. This operation stores configuration and does
      # not initiate a payment. See the
      # [processor contract](/docs/voice/programmable-voice/pay#request-sent-to-the-payment-processor).
      sig do
        params(
          config:
            T.any(
              Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::OrHash,
              Telnyx::GenericPayConnectorConfig::BearerAuthentication::OrHash,
              Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication::OrHash
            ),
          name: String,
          mode: Telnyx::PayConnectorCreateParams::Mode::OrSymbol,
          type: Telnyx::PayConnectorCreateParams::Type::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::PayConnectorResponse)
      end
      def create(
        # Configuration for a generic connector. A config update replaces the complete
        # object, not individual keys. Unknown config keys are discarded. Authentication
        # credentials must be nonblank strings when required by the selected auth_type.
        config:,
        # Unique within the authenticated organization. Used in resource paths and as
        # connector_name in the Call Control Pay request. Cannot be renamed by update.
        name:,
        # Defaults to test on creation. Test restricts collected card numbers but still
        # contacts the configured processor; use a processor sandbox URL and sandbox
        # credentials. Live removes the test-card restriction. Neither mode locks API
        # updates.
        mode: nil,
        # Connector type covered by this reference.
        type: nil,
        request_options: {}
      )
      end

      # Retrieve a connector by name within the authenticated organization. Password and
      # token are omitted. A missing name or a connector owned by another organization
      # returns 404.
      sig do
        params(
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::PayConnectorResponse)
      end
      def retrieve(
        # Connector name, not its UUID. URL-encode the name as a path segment.
        name,
        request_options: {}
      )
      end

      # Update a generic connector by name in the authenticated organization. Both test
      # and live connectors can be updated through the API. Omitted fields remain
      # unchanged. Supplying config replaces the entire config; it does not merge keys.
      # Include endpoint_url and the credentials required for the selected auth_type on
      # every config replacement. Omitting config preserves existing credentials,
      # allowing a mode-only update. The path name cannot be renamed. Public updates use
      # PATCH.
      sig do
        params(
          name: String,
          config:
            T.any(
              Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::OrHash,
              Telnyx::GenericPayConnectorConfig::BearerAuthentication::OrHash,
              Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication::OrHash
            ),
          mode: Telnyx::PayConnectorUpdateParams::Mode::OrSymbol,
          type: Telnyx::PayConnectorUpdateParams::Type::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::PayConnectorResponse)
      end
      def update(
        # Connector name, not its UUID. URL-encode the name as a path segment.
        name,
        # Configuration for a generic connector. A config update replaces the complete
        # object, not individual keys. Unknown config keys are discarded. Authentication
        # credentials must be nonblank strings when required by the selected auth_type.
        config: nil,
        # Omit to preserve the existing mode. Use an explicit test or live value.
        mode: nil,
        # Generic connector type. Omit to preserve the existing value.
        type: nil,
        request_options: {}
      )
      end

      # List connectors belonging to the authenticated organization, including
      # connectors created by other users in that organization. Set filter[type]=generic
      # to restrict results to the type covered here. Results default to newest
      # created_at first. Use meta.end_cursor as page[after] for the next page, or
      # meta.start_cursor as page[before] for the preceding page. Omit both cursors for
      # the first page; if both are supplied, page[after] takes precedence. Responses
      # omit passwords and tokens.
      sig do
        params(
          filter_created_at_eq: String,
          filter_created_at_gt: String,
          filter_created_at_gte: String,
          filter_created_at_lt: String,
          filter_created_at_lte: String,
          filter_mode: String,
          filter_name: String,
          filter_type: String,
          filter_updated_at_eq: String,
          filter_updated_at_gt: String,
          filter_updated_at_gte: String,
          filter_updated_at_lt: String,
          filter_updated_at_lte: String,
          page_after: String,
          page_before: String,
          page_size: Integer,
          sort: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::EmailBracketCursorPagination[Telnyx::PayConnector]
        )
      end
      def list(
        # Equal to this created_at timestamp.
        filter_created_at_eq: nil,
        # After this created_at timestamp.
        filter_created_at_gt: nil,
        # At or after this created_at timestamp.
        filter_created_at_gte: nil,
        # Before this created_at timestamp.
        filter_created_at_lt: nil,
        # At or before this created_at timestamp.
        filter_created_at_lte: nil,
        # Exact match on mode.
        filter_mode: nil,
        # Exact match on name.
        filter_name: nil,
        # Exact match on type.
        filter_type: nil,
        # Equal to this updated_at timestamp.
        filter_updated_at_eq: nil,
        # After this updated_at timestamp.
        filter_updated_at_gt: nil,
        # At or after this updated_at timestamp.
        filter_updated_at_gte: nil,
        # Before this updated_at timestamp.
        filter_updated_at_lt: nil,
        # At or before this updated_at timestamp.
        filter_updated_at_lte: nil,
        # Opaque cursor from meta.end_cursor.
        page_after: nil,
        # Opaque cursor from meta.start_cursor.
        page_before: nil,
        # Number of records per page.
        page_size: nil,
        # Comma-separated created_at or updated_at fields, optionally prefixed with - for
        # descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Delete a connector by name in the authenticated organization. Both test and live
      # connectors can be deleted. Returns no response body on success; a missing name
      # or a connector in another organization returns 404.
      sig do
        params(
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Connector name, not its UUID. URL-encode the name as a path segment.
        name,
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
