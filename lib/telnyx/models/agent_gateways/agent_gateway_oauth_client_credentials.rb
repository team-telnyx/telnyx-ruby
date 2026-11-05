# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayOAuthClientCredentials < Telnyx::Internal::Type::BaseModel
        # @!attribute token_url
        #   The OAuth provider's token endpoint.
        #
        #   @return [String]
        required :token_url, String

        # @!attribute type
        #
        #   @return [Symbol, :oauth_client_credentials]
        required :type, const: :oauth_client_credentials

        # @!attribute audience
        #   The token's audience, sent in the token request.
        #
        #   @return [String, nil]
        optional :audience, String, nil?: true

        # @!attribute credentials_in
        #   Whether the client ID and secret go in the token request's body or as HTTP Basic
        #   authentication.
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials::CredentialsIn, nil]
        optional :credentials_in,
                 enum: -> { Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::CredentialsIn }

        # @!attribute resource
        #   The resource the token is for, sent in the token request.
        #
        #   @return [String, nil]
        optional :resource, String, nil?: true

        # @!attribute scopes
        #   The scopes to request.
        #
        #   @return [Array<String>, nil]
        optional :scopes, Telnyx::Internal::Type::ArrayOf[String]

        request_only do
          # @!attribute client_id
          #
          #   @return [String]
          required :client_id, String

          # @!attribute client_secret
          #
          #   @return [String]
          required :client_secret, String
        end

        # @!method initialize(client_id:, client_secret:, token_url:, audience: nil, credentials_in: nil, resource: nil, scopes: nil, type: :oauth_client_credentials)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials} for more
        #   details.
        #
        #   The gateway gets its own access token with the `client_credentials` grant and
        #   sends it as a bearer token on every request, renewing it before it expires. The
        #   client ID and secret are write-only.
        #
        #   @param client_id [String]
        #
        #   @param client_secret [String]
        #
        #   @param token_url [String] The OAuth provider's token endpoint.
        #
        #   @param audience [String, nil] The token's audience, sent in the token request.
        #
        #   @param credentials_in [Symbol, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials::CredentialsIn] Whether the client ID and secret go in the token request's body or as HTTP Basic
        #
        #   @param resource [String, nil] The resource the token is for, sent in the token request.
        #
        #   @param scopes [Array<String>] The scopes to request.
        #
        #   @param type [Symbol, :oauth_client_credentials]

        # Whether the client ID and secret go in the token request's body or as HTTP Basic
        # authentication.
        #
        # @see Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials#credentials_in
        module CredentialsIn
          extend Telnyx::Internal::Type::Enum

          BODY = :body
          BASIC = :basic

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    AgentGatewayOAuthClientCredentials = AgentGateways::AgentGatewayOAuthClientCredentials
  end
end
