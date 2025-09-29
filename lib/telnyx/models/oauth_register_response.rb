# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#register
    class OAuthRegisterResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute client_id
      #   Unique client identifier
      #
      #   @return [String]
      required :client_id, String

      # @!attribute client_id_issued_at
      #   Unix timestamp of when the client ID was issued
      #
      #   @return [Integer]
      required :client_id_issued_at, Integer

      # @!attribute client_name
      #   Human-readable client name
      #
      #   @return [String, nil]
      optional :client_name, String

      # @!attribute client_secret
      #   Client secret (only for confidential clients)
      #
      #   @return [String, nil]
      optional :client_secret, String

      # @!attribute grant_types
      #   Array of allowed grant types
      #
      #   @return [Array<String>, nil]
      optional :grant_types, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute logo_uri
      #   URL of the client logo
      #
      #   @return [String, nil]
      optional :logo_uri, String

      # @!attribute policy_uri
      #   URL of the client's privacy policy
      #
      #   @return [String, nil]
      optional :policy_uri, String

      # @!attribute redirect_uris
      #   Array of redirection URIs
      #
      #   @return [Array<String>, nil]
      optional :redirect_uris, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute response_types
      #   Array of allowed response types
      #
      #   @return [Array<String>, nil]
      optional :response_types, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute scope
      #   Space-separated scope values
      #
      #   @return [String, nil]
      optional :scope, String

      # @!attribute token_endpoint_auth_method
      #   Token endpoint authentication method
      #
      #   @return [String, nil]
      optional :token_endpoint_auth_method, String

      # @!attribute tos_uri
      #   URL of the client's terms of service
      #
      #   @return [String, nil]
      optional :tos_uri, String

      # @!method initialize(client_id:, client_id_issued_at:, client_name: nil, client_secret: nil, grant_types: nil, logo_uri: nil, policy_uri: nil, redirect_uris: nil, response_types: nil, scope: nil, token_endpoint_auth_method: nil, tos_uri: nil)
      #   @param client_id [String] Unique client identifier
      #
      #   @param client_id_issued_at [Integer] Unix timestamp of when the client ID was issued
      #
      #   @param client_name [String] Human-readable client name
      #
      #   @param client_secret [String] Client secret (only for confidential clients)
      #
      #   @param grant_types [Array<String>] Array of allowed grant types
      #
      #   @param logo_uri [String] URL of the client logo
      #
      #   @param policy_uri [String] URL of the client's privacy policy
      #
      #   @param redirect_uris [Array<String>] Array of redirection URIs
      #
      #   @param response_types [Array<String>] Array of allowed response types
      #
      #   @param scope [String] Space-separated scope values
      #
      #   @param token_endpoint_auth_method [String] Token endpoint authentication method
      #
      #   @param tos_uri [String] URL of the client's terms of service
    end
  end
end
