# frozen_string_literal: true

module Telnyx
  module Resources
    class OAuthClients
      # Create a new OAuth client
      #
      # @overload create(allowed_grant_types:, allowed_scopes:, client_type:, name:, logo_uri: nil, policy_uri: nil, redirect_uris: nil, require_pkce: nil, tos_uri: nil, request_options: {})
      #
      # @param allowed_grant_types [Array<Symbol, Telnyx::Models::OAuthClientCreateParams::AllowedGrantType>] List of allowed OAuth grant types
      #
      # @param allowed_scopes [Array<String>] List of allowed OAuth scopes
      #
      # @param client_type [Symbol, Telnyx::Models::OAuthClientCreateParams::ClientType] OAuth client type
      #
      # @param name [String] The name of the OAuth client
      #
      # @param logo_uri [String] URL of the client logo
      #
      # @param policy_uri [String] URL of the client's privacy policy
      #
      # @param redirect_uris [Array<String>] List of redirect URIs (required for authorization_code flow)
      #
      # @param require_pkce [Boolean] Whether PKCE (Proof Key for Code Exchange) is required for this client
      #
      # @param tos_uri [String] URL of the client's terms of service
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OAuthClientCreateResponse]
      #
      # @see Telnyx::Models::OAuthClientCreateParams
      def create(params)
        parsed, options = Telnyx::OAuthClientCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "oauth_clients",
          body: parsed,
          model: Telnyx::Models::OAuthClientCreateResponse,
          options: options
        )
      end

      # Retrieve a single OAuth client by ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] OAuth client ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OAuthClientRetrieveResponse]
      #
      # @see Telnyx::Models::OAuthClientRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["oauth_clients/%1$s", id],
          model: Telnyx::Models::OAuthClientRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update an existing OAuth client
      #
      # @overload update(id, allowed_grant_types: nil, allowed_scopes: nil, logo_uri: nil, name: nil, policy_uri: nil, redirect_uris: nil, require_pkce: nil, tos_uri: nil, request_options: {})
      #
      # @param id [String] OAuth client ID
      #
      # @param allowed_grant_types [Array<Symbol, Telnyx::Models::OAuthClientUpdateParams::AllowedGrantType>] List of allowed OAuth grant types
      #
      # @param allowed_scopes [Array<String>] List of allowed OAuth scopes
      #
      # @param logo_uri [String] URL of the client logo
      #
      # @param name [String] The name of the OAuth client
      #
      # @param policy_uri [String] URL of the client's privacy policy
      #
      # @param redirect_uris [Array<String>] List of redirect URIs
      #
      # @param require_pkce [Boolean] Whether PKCE (Proof Key for Code Exchange) is required for this client
      #
      # @param tos_uri [String] URL of the client's terms of service
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OAuthClientUpdateResponse]
      #
      # @see Telnyx::Models::OAuthClientUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::OAuthClientUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["oauth_clients/%1$s", id],
          body: parsed,
          model: Telnyx::Models::OAuthClientUpdateResponse,
          options: options
        )
      end

      # Retrieve a paginated list of OAuth clients for the authenticated user
      #
      # @overload list(filter_allowed_grant_types_contains: nil, filter_client_id: nil, filter_client_type: nil, filter_name: nil, filter_name_contains: nil, filter_verified: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter_allowed_grant_types_contains [Symbol, Telnyx::Models::OAuthClientListParams::FilterAllowedGrantTypesContains] Filter by allowed grant type
      #
      # @param filter_client_id [String] Filter by client ID
      #
      # @param filter_client_type [Symbol, Telnyx::Models::OAuthClientListParams::FilterClientType] Filter by client type
      #
      # @param filter_name [String] Filter by exact client name
      #
      # @param filter_name_contains [String] Filter by client name containing text
      #
      # @param filter_verified [Boolean] Filter by verification status
      #
      # @param page_number [Integer] Page number
      #
      # @param page_size [Integer] Number of results per page
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::OAuthClient>]
      #
      # @see Telnyx::Models::OAuthClientListParams
      def list(params = {})
        parsed, options = Telnyx::OAuthClientListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "oauth_clients",
          query: parsed.transform_keys(
            filter_allowed_grant_types_contains: "filter[allowed_grant_types][contains]",
            filter_client_id: "filter[client_id]",
            filter_client_type: "filter[client_type]",
            filter_name: "filter[name]",
            filter_name_contains: "filter[name][contains]",
            filter_verified: "filter[verified]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::OAuthClient,
          options: options
        )
      end

      # Delete an OAuth client
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] OAuth client ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::OAuthClientDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["oauth_clients/%1$s", id],
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
