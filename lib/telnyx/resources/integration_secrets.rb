# frozen_string_literal: true

module Telnyx
  module Resources
    class IntegrationSecrets
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::IntegrationSecretCreateParams} for more details.
      #
      # Create a new secret with an associated identifier that can be used to securely
      # integrate with other services.
      #
      # @overload create(identifier:, type:, token: nil, password: nil, username: nil, request_options: {})
      #
      # @param identifier [String] The unique identifier of the secret.
      #
      # @param type [Symbol, Telnyx::Models::IntegrationSecretCreateParams::Type] The type of secret.
      #
      # @param token [String] The token for the secret. Required for bearer type secrets, ignored otherwise.
      #
      # @param password [String] The password for the secret. Required for basic type secrets, ignored otherwise.
      #
      # @param username [String] The username for the secret. Required for basic type secrets, ignored otherwise.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::IntegrationSecretCreateResponse]
      #
      # @see Telnyx::Models::IntegrationSecretCreateParams
      def create(params)
        parsed, options = Telnyx::IntegrationSecretCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "integration_secrets",
          body: parsed,
          model: Telnyx::Models::IntegrationSecretCreateResponse,
          options: options
        )
      end

      # Retrieve a list of all integration secrets configured by the user.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::IntegrationSecretListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type]
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::IntegrationSecret>]
      #
      # @see Telnyx::Models::IntegrationSecretListParams
      def list(params = {})
        parsed, options = Telnyx::IntegrationSecretListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "integration_secrets",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::IntegrationSecret,
          options: options
        )
      end

      # Delete an integration secret given its ID.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::IntegrationSecretDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["integration_secrets/%1$s", id],
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
