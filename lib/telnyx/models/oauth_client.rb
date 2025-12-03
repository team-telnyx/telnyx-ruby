# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthClients#list
    class OAuthClient < Telnyx::Internal::Type::BaseModel
      # @!attribute client_id
      #   OAuth client identifier
      #
      #   @return [String]
      required :client_id, String

      # @!attribute client_type
      #   OAuth client type
      #
      #   @return [Symbol, Telnyx::Models::OAuthClient::ClientType]
      required :client_type, enum: -> { Telnyx::OAuthClient::ClientType }

      # @!attribute created_at
      #   Timestamp when the client was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #   Human-readable name for the OAuth client
      #
      #   @return [String]
      required :name, String

      # @!attribute org_id
      #   Organization ID that owns this OAuth client
      #
      #   @return [String]
      required :org_id, String

      # @!attribute record_type
      #   Record type identifier
      #
      #   @return [Symbol, Telnyx::Models::OAuthClient::RecordType]
      required :record_type, enum: -> { Telnyx::OAuthClient::RecordType }

      # @!attribute require_pkce
      #   Whether PKCE (Proof Key for Code Exchange) is required for this client
      #
      #   @return [Boolean]
      required :require_pkce, Telnyx::Internal::Type::Boolean

      # @!attribute updated_at
      #   Timestamp when the client was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user_id
      #   User ID that created this OAuth client
      #
      #   @return [String]
      required :user_id, String

      # @!attribute allowed_grant_types
      #   List of allowed OAuth grant types
      #
      #   @return [Array<Symbol, Telnyx::Models::OAuthClient::AllowedGrantType>, nil]
      optional :allowed_grant_types,
               -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::OAuthClient::AllowedGrantType] }

      # @!attribute allowed_scopes
      #   List of allowed OAuth scopes
      #
      #   @return [Array<String>, nil]
      optional :allowed_scopes, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute client_secret
      #   Client secret (only included when available, for confidential clients)
      #
      #   @return [String, nil]
      optional :client_secret, String, nil?: true

      # @!attribute logo_uri
      #   URL of the client logo
      #
      #   @return [String, nil]
      optional :logo_uri, String, nil?: true

      # @!attribute policy_uri
      #   URL of the client's privacy policy
      #
      #   @return [String, nil]
      optional :policy_uri, String, nil?: true

      # @!attribute redirect_uris
      #   List of allowed redirect URIs
      #
      #   @return [Array<String>, nil]
      optional :redirect_uris, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute tos_uri
      #   URL of the client's terms of service
      #
      #   @return [String, nil]
      optional :tos_uri, String, nil?: true

      # @!method initialize(client_id:, client_type:, created_at:, name:, org_id:, record_type:, require_pkce:, updated_at:, user_id:, allowed_grant_types: nil, allowed_scopes: nil, client_secret: nil, logo_uri: nil, policy_uri: nil, redirect_uris: nil, tos_uri: nil)
      #   @param client_id [String] OAuth client identifier
      #
      #   @param client_type [Symbol, Telnyx::Models::OAuthClient::ClientType] OAuth client type
      #
      #   @param created_at [Time] Timestamp when the client was created
      #
      #   @param name [String] Human-readable name for the OAuth client
      #
      #   @param org_id [String] Organization ID that owns this OAuth client
      #
      #   @param record_type [Symbol, Telnyx::Models::OAuthClient::RecordType] Record type identifier
      #
      #   @param require_pkce [Boolean] Whether PKCE (Proof Key for Code Exchange) is required for this client
      #
      #   @param updated_at [Time] Timestamp when the client was last updated
      #
      #   @param user_id [String] User ID that created this OAuth client
      #
      #   @param allowed_grant_types [Array<Symbol, Telnyx::Models::OAuthClient::AllowedGrantType>] List of allowed OAuth grant types
      #
      #   @param allowed_scopes [Array<String>] List of allowed OAuth scopes
      #
      #   @param client_secret [String, nil] Client secret (only included when available, for confidential clients)
      #
      #   @param logo_uri [String, nil] URL of the client logo
      #
      #   @param policy_uri [String, nil] URL of the client's privacy policy
      #
      #   @param redirect_uris [Array<String>] List of allowed redirect URIs
      #
      #   @param tos_uri [String, nil] URL of the client's terms of service

      # OAuth client type
      #
      # @see Telnyx::Models::OAuthClient#client_type
      module ClientType
        extend Telnyx::Internal::Type::Enum

        PUBLIC = :public
        CONFIDENTIAL = :confidential

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Record type identifier
      #
      # @see Telnyx::Models::OAuthClient#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        OAUTH_CLIENT = :oauth_client

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module AllowedGrantType
        extend Telnyx::Internal::Type::Enum

        CLIENT_CREDENTIALS = :client_credentials
        AUTHORIZATION_CODE = :authorization_code
        REFRESH_TOKEN = :refresh_token

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
