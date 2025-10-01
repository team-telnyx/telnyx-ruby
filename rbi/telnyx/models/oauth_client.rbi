# typed: strong

module Telnyx
  module Models
    class OAuthClient < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::OAuthClient, Telnyx::Internal::AnyHash) }

      # OAuth client identifier
      sig { returns(String) }
      attr_accessor :client_id

      # OAuth client type
      sig { returns(Telnyx::OAuthClient::ClientType::TaggedSymbol) }
      attr_accessor :client_type

      # Timestamp when the client was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Human-readable name for the OAuth client
      sig { returns(String) }
      attr_accessor :name

      # Organization ID that owns this OAuth client
      sig { returns(String) }
      attr_accessor :org_id

      # Record type identifier
      sig { returns(Telnyx::OAuthClient::RecordType::TaggedSymbol) }
      attr_accessor :record_type

      # Whether PKCE (Proof Key for Code Exchange) is required for this client
      sig { returns(T::Boolean) }
      attr_accessor :require_pkce

      # Timestamp when the client was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # User ID that created this OAuth client
      sig { returns(String) }
      attr_accessor :user_id

      # List of allowed OAuth grant types
      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::OAuthClient::AllowedGrantType::TaggedSymbol]
          )
        )
      end
      attr_reader :allowed_grant_types

      sig do
        params(
          allowed_grant_types:
            T::Array[Telnyx::OAuthClient::AllowedGrantType::OrSymbol]
        ).void
      end
      attr_writer :allowed_grant_types

      # List of allowed OAuth scopes
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :allowed_scopes

      sig { params(allowed_scopes: T::Array[String]).void }
      attr_writer :allowed_scopes

      # Client secret (only included when available, for confidential clients)
      sig { returns(T.nilable(String)) }
      attr_accessor :client_secret

      # URL of the client logo
      sig { returns(T.nilable(String)) }
      attr_accessor :logo_uri

      # URL of the client's privacy policy
      sig { returns(T.nilable(String)) }
      attr_accessor :policy_uri

      # List of allowed redirect URIs
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :redirect_uris

      sig { params(redirect_uris: T::Array[String]).void }
      attr_writer :redirect_uris

      # URL of the client's terms of service
      sig { returns(T.nilable(String)) }
      attr_accessor :tos_uri

      sig do
        params(
          client_id: String,
          client_type: Telnyx::OAuthClient::ClientType::OrSymbol,
          created_at: Time,
          name: String,
          org_id: String,
          record_type: Telnyx::OAuthClient::RecordType::OrSymbol,
          require_pkce: T::Boolean,
          updated_at: Time,
          user_id: String,
          allowed_grant_types:
            T::Array[Telnyx::OAuthClient::AllowedGrantType::OrSymbol],
          allowed_scopes: T::Array[String],
          client_secret: T.nilable(String),
          logo_uri: T.nilable(String),
          policy_uri: T.nilable(String),
          redirect_uris: T::Array[String],
          tos_uri: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # OAuth client identifier
        client_id:,
        # OAuth client type
        client_type:,
        # Timestamp when the client was created
        created_at:,
        # Human-readable name for the OAuth client
        name:,
        # Organization ID that owns this OAuth client
        org_id:,
        # Record type identifier
        record_type:,
        # Whether PKCE (Proof Key for Code Exchange) is required for this client
        require_pkce:,
        # Timestamp when the client was last updated
        updated_at:,
        # User ID that created this OAuth client
        user_id:,
        # List of allowed OAuth grant types
        allowed_grant_types: nil,
        # List of allowed OAuth scopes
        allowed_scopes: nil,
        # Client secret (only included when available, for confidential clients)
        client_secret: nil,
        # URL of the client logo
        logo_uri: nil,
        # URL of the client's privacy policy
        policy_uri: nil,
        # List of allowed redirect URIs
        redirect_uris: nil,
        # URL of the client's terms of service
        tos_uri: nil
      )
      end

      sig do
        override.returns(
          {
            client_id: String,
            client_type: Telnyx::OAuthClient::ClientType::TaggedSymbol,
            created_at: Time,
            name: String,
            org_id: String,
            record_type: Telnyx::OAuthClient::RecordType::TaggedSymbol,
            require_pkce: T::Boolean,
            updated_at: Time,
            user_id: String,
            allowed_grant_types:
              T::Array[Telnyx::OAuthClient::AllowedGrantType::TaggedSymbol],
            allowed_scopes: T::Array[String],
            client_secret: T.nilable(String),
            logo_uri: T.nilable(String),
            policy_uri: T.nilable(String),
            redirect_uris: T::Array[String],
            tos_uri: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # OAuth client type
      module ClientType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::OAuthClient::ClientType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC = T.let(:public, Telnyx::OAuthClient::ClientType::TaggedSymbol)
        CONFIDENTIAL =
          T.let(:confidential, Telnyx::OAuthClient::ClientType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::OAuthClient::ClientType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Record type identifier
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::OAuthClient::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OAUTH_CLIENT =
          T.let(:oauth_client, Telnyx::OAuthClient::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::OAuthClient::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module AllowedGrantType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::OAuthClient::AllowedGrantType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLIENT_CREDENTIALS =
          T.let(
            :client_credentials,
            Telnyx::OAuthClient::AllowedGrantType::TaggedSymbol
          )
        AUTHORIZATION_CODE =
          T.let(
            :authorization_code,
            Telnyx::OAuthClient::AllowedGrantType::TaggedSymbol
          )
        REFRESH_TOKEN =
          T.let(
            :refresh_token,
            Telnyx::OAuthClient::AllowedGrantType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::OAuthClient::AllowedGrantType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
