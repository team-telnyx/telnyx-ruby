# frozen_string_literal: true

module Telnyx
  module Resources
    class AuthenticationProviders
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AuthenticationProviderCreateParams} for more details.
      #
      # Creates an authentication provider.
      #
      # @overload create(name:, settings:, short_name:, active: nil, settings_url: nil, request_options: {})
      #
      # @param name [String] The name associated with the authentication provider.
      #
      # @param settings [Telnyx::Models::Settings] The settings associated with the authentication provider.
      #
      # @param short_name [String] The short name associated with the authentication provider. This must be unique
      #
      # @param active [Boolean] The active status of the authentication provider
      #
      # @param settings_url [String] The URL for the identity provider metadata file to populate the settings automat
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AuthenticationProviderCreateResponse]
      #
      # @see Telnyx::Models::AuthenticationProviderCreateParams
      def create(params)
        parsed, options = Telnyx::AuthenticationProviderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "authentication_providers",
          body: parsed,
          model: Telnyx::Models::AuthenticationProviderCreateResponse,
          options: options
        )
      end

      # Retrieves the details of an existing authentication provider.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] authentication provider ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AuthenticationProviderRetrieveResponse]
      #
      # @see Telnyx::Models::AuthenticationProviderRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["authentication_providers/%1$s", id],
          model: Telnyx::Models::AuthenticationProviderRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AuthenticationProviderUpdateParams} for more details.
      #
      # Updates settings of an existing authentication provider.
      #
      # @overload update(id, active: nil, name: nil, settings: nil, settings_url: nil, short_name: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param active [Boolean] The active status of the authentication provider
      #
      # @param name [String] The name associated with the authentication provider.
      #
      # @param settings [Telnyx::Models::Settings] The settings associated with the authentication provider.
      #
      # @param settings_url [String] The URL for the identity provider metadata file to populate the settings automat
      #
      # @param short_name [String] The short name associated with the authentication provider. This must be unique
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AuthenticationProviderUpdateResponse]
      #
      # @see Telnyx::Models::AuthenticationProviderUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::AuthenticationProviderUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["authentication_providers/%1$s", id],
          body: parsed,
          model: Telnyx::Models::AuthenticationProviderUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AuthenticationProviderListParams} for more details.
      #
      # Returns a list of your SSO authentication providers.
      #
      # @overload list(page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param sort [Symbol, Telnyx::Models::AuthenticationProviderListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AuthenticationProvider>]
      #
      # @see Telnyx::Models::AuthenticationProviderListParams
      def list(params = {})
        parsed, options = Telnyx::AuthenticationProviderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "authentication_providers",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::AuthenticationProvider,
          options: options
        )
      end

      # Deletes an existing authentication provider.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] authentication provider ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AuthenticationProviderDeleteResponse]
      #
      # @see Telnyx::Models::AuthenticationProviderDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["authentication_providers/%1$s", id],
          model: Telnyx::Models::AuthenticationProviderDeleteResponse,
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
