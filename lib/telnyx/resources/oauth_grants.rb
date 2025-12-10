# frozen_string_literal: true

module Telnyx
  module Resources
    class OAuthGrants
      # Retrieve a single OAuth grant by ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] OAuth grant ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OAuthGrantRetrieveResponse]
      #
      # @see Telnyx::Models::OAuthGrantRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["oauth_grants/%1$s", id],
          model: Telnyx::Models::OAuthGrantRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Retrieve a paginated list of OAuth grants for the authenticated user
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer] Page number
      #
      # @param page_size [Integer] Number of results per page
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::OAuthGrant>]
      #
      # @see Telnyx::Models::OAuthGrantListParams
      def list(params = {})
        parsed, options = Telnyx::OAuthGrantListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "oauth_grants",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::OAuthGrant,
          options: options
        )
      end

      # Revoke an OAuth grant
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] OAuth grant ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OAuthGrantDeleteResponse]
      #
      # @see Telnyx::Models::OAuthGrantDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["oauth_grants/%1$s", id],
          model: Telnyx::Models::OAuthGrantDeleteResponse,
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
