# frozen_string_literal: true

module Telnyx
  module Resources
    # Generic payment connector configuration.
    class PayConnectors
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PayConnectorCreateParams} for more details.
      #
      # Create a generic payment connector in the authenticated organization. The name
      # must be unique in that organization. Authentication supplies ownership; do not
      # send user_id or organization_id. Config is encrypted at rest; passwords and
      # tokens are omitted from responses. This operation stores configuration and does
      # not initiate a payment. See the
      # [processor contract](/docs/voice/programmable-voice/pay#request-sent-to-the-payment-processor).
      #
      # @overload create(config:, name:, mode: nil, type: nil, request_options: {})
      #
      # @param config [Telnyx::Models::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault, Telnyx::Models::GenericPayConnectorConfig::BearerAuthentication, Telnyx::Models::GenericPayConnectorConfig::NoProcessorAuthentication] Configuration for a generic connector. A config update replaces the complete obj
      #
      # @param name [String] Unique within the authenticated organization. Used in resource paths and as conn
      #
      # @param mode [Symbol, Telnyx::Models::PayConnectorCreateParams::Mode] Defaults to test on creation. Test restricts collected card numbers but still co
      #
      # @param type [Symbol, Telnyx::Models::PayConnectorCreateParams::Type] Connector type covered by this reference.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PayConnectorResponse]
      #
      # @see Telnyx::Models::PayConnectorCreateParams
      def create(params)
        parsed, options = Telnyx::PayConnectorCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "pay_connectors",
          body: parsed,
          model: Telnyx::PayConnectorResponse,
          options: options
        )
      end

      # Retrieve a connector by name within the authenticated organization. Password and
      # token are omitted. A missing name or a connector owned by another organization
      # returns 404.
      #
      # @overload retrieve(name, request_options: {})
      #
      # @param name [String] Connector name, not its UUID. URL-encode the name as a path segment.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PayConnectorResponse]
      #
      # @see Telnyx::Models::PayConnectorRetrieveParams
      def retrieve(name, params = {})
        @client.request(
          method: :get,
          path: ["pay_connectors/%1$s", name],
          model: Telnyx::PayConnectorResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PayConnectorUpdateParams} for more details.
      #
      # Update a generic connector by name in the authenticated organization. Both test
      # and live connectors can be updated through the API. Omitted fields remain
      # unchanged. Supplying config replaces the entire config; it does not merge keys.
      # Include endpoint_url and the credentials required for the selected auth_type on
      # every config replacement. Omitting config preserves existing credentials,
      # allowing a mode-only update. The path name cannot be renamed. Public updates use
      # PATCH.
      #
      # @overload update(name, config: nil, mode: nil, type: nil, request_options: {})
      #
      # @param name [String] Connector name, not its UUID. URL-encode the name as a path segment.
      #
      # @param config [Telnyx::Models::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault, Telnyx::Models::GenericPayConnectorConfig::BearerAuthentication, Telnyx::Models::GenericPayConnectorConfig::NoProcessorAuthentication] Configuration for a generic connector. A config update replaces the complete obj
      #
      # @param mode [Symbol, Telnyx::Models::PayConnectorUpdateParams::Mode] Omit to preserve the existing mode. Use an explicit test or live value.
      #
      # @param type [Symbol, Telnyx::Models::PayConnectorUpdateParams::Type] Generic connector type. Omit to preserve the existing value.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PayConnectorResponse]
      #
      # @see Telnyx::Models::PayConnectorUpdateParams
      def update(name, params = {})
        parsed, options = Telnyx::PayConnectorUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["pay_connectors/%1$s", name],
          body: parsed,
          model: Telnyx::PayConnectorResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PayConnectorListParams} for more details.
      #
      # List connectors belonging to the authenticated organization, including
      # connectors created by other users in that organization. Set filter[type]=generic
      # to restrict results to the type covered here. Results default to newest
      # created_at first. Use meta.end_cursor as page[after] for the next page, or
      # meta.start_cursor as page[before] for the preceding page. Omit both cursors for
      # the first page; if both are supplied, page[after] takes precedence. Responses
      # omit passwords and tokens.
      #
      # @overload list(filter_created_at_eq: nil, filter_created_at_gt: nil, filter_created_at_gte: nil, filter_created_at_lt: nil, filter_created_at_lte: nil, filter_mode: nil, filter_name: nil, filter_type: nil, filter_updated_at_eq: nil, filter_updated_at_gt: nil, filter_updated_at_gte: nil, filter_updated_at_lt: nil, filter_updated_at_lte: nil, page_after: nil, page_before: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter_created_at_eq [String] Equal to this created_at timestamp.
      #
      # @param filter_created_at_gt [String] After this created_at timestamp.
      #
      # @param filter_created_at_gte [String] At or after this created_at timestamp.
      #
      # @param filter_created_at_lt [String] Before this created_at timestamp.
      #
      # @param filter_created_at_lte [String] At or before this created_at timestamp.
      #
      # @param filter_mode [String] Exact match on mode.
      #
      # @param filter_name [String] Exact match on name.
      #
      # @param filter_type [String] Exact match on type.
      #
      # @param filter_updated_at_eq [String] Equal to this updated_at timestamp.
      #
      # @param filter_updated_at_gt [String] After this updated_at timestamp.
      #
      # @param filter_updated_at_gte [String] At or after this updated_at timestamp.
      #
      # @param filter_updated_at_lt [String] Before this updated_at timestamp.
      #
      # @param filter_updated_at_lte [String] At or before this updated_at timestamp.
      #
      # @param page_after [String] Opaque cursor from meta.end_cursor.
      #
      # @param page_before [String] Opaque cursor from meta.start_cursor.
      #
      # @param page_size [Integer] Number of records per page.
      #
      # @param sort [String] Comma-separated created_at or updated_at fields, optionally prefixed with - for
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::EmailBracketCursorPagination<Telnyx::Models::PayConnector>]
      #
      # @see Telnyx::Models::PayConnectorListParams
      def list(params = {})
        parsed, options = Telnyx::PayConnectorListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "pay_connectors",
          query: query.transform_keys(
            filter_created_at_eq: "filter[created_at][eq]",
            filter_created_at_gt: "filter[created_at][gt]",
            filter_created_at_gte: "filter[created_at][gte]",
            filter_created_at_lt: "filter[created_at][lt]",
            filter_created_at_lte: "filter[created_at][lte]",
            filter_mode: "filter[mode]",
            filter_name: "filter[name]",
            filter_type: "filter[type]",
            filter_updated_at_eq: "filter[updated_at][eq]",
            filter_updated_at_gt: "filter[updated_at][gt]",
            filter_updated_at_gte: "filter[updated_at][gte]",
            filter_updated_at_lt: "filter[updated_at][lt]",
            filter_updated_at_lte: "filter[updated_at][lte]",
            page_after: "page[after]",
            page_before: "page[before]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::EmailBracketCursorPagination,
          model: Telnyx::PayConnector,
          options: options
        )
      end

      # Delete a connector by name in the authenticated organization. Both test and live
      # connectors can be deleted. Returns no response body on success; a missing name
      # or a connector in another organization returns 404.
      #
      # @overload delete(name, request_options: {})
      #
      # @param name [String] Connector name, not its UUID. URL-encode the name as a path segment.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::PayConnectorDeleteParams
      def delete(name, params = {})
        @client.request(
          method: :delete,
          path: ["pay_connectors/%1$s", name],
          model: NilClass,
          options: params[:request_options]
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
