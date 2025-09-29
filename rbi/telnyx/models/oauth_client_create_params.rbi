# typed: strong

module Telnyx
  module Models
    class OAuthClientCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::OAuthClientCreateParams, Telnyx::Internal::AnyHash)
        end

      # List of allowed OAuth grant types
      sig do
        returns(
          T::Array[Telnyx::OAuthClientCreateParams::AllowedGrantType::OrSymbol]
        )
      end
      attr_accessor :allowed_grant_types

      # List of allowed OAuth scopes
      sig { returns(T::Array[String]) }
      attr_accessor :allowed_scopes

      # OAuth client type
      sig { returns(Telnyx::OAuthClientCreateParams::ClientType::OrSymbol) }
      attr_accessor :client_type

      # The name of the OAuth client
      sig { returns(String) }
      attr_accessor :name

      # URL of the client logo
      sig { returns(T.nilable(String)) }
      attr_reader :logo_uri

      sig { params(logo_uri: String).void }
      attr_writer :logo_uri

      # URL of the client's privacy policy
      sig { returns(T.nilable(String)) }
      attr_reader :policy_uri

      sig { params(policy_uri: String).void }
      attr_writer :policy_uri

      # List of redirect URIs (required for authorization_code flow)
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :redirect_uris

      sig { params(redirect_uris: T::Array[String]).void }
      attr_writer :redirect_uris

      # Whether PKCE (Proof Key for Code Exchange) is required for this client
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_pkce

      sig { params(require_pkce: T::Boolean).void }
      attr_writer :require_pkce

      # URL of the client's terms of service
      sig { returns(T.nilable(String)) }
      attr_reader :tos_uri

      sig { params(tos_uri: String).void }
      attr_writer :tos_uri

      sig do
        params(
          allowed_grant_types:
            T::Array[
              Telnyx::OAuthClientCreateParams::AllowedGrantType::OrSymbol
            ],
          allowed_scopes: T::Array[String],
          client_type: Telnyx::OAuthClientCreateParams::ClientType::OrSymbol,
          name: String,
          logo_uri: String,
          policy_uri: String,
          redirect_uris: T::Array[String],
          require_pkce: T::Boolean,
          tos_uri: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # List of allowed OAuth grant types
        allowed_grant_types:,
        # List of allowed OAuth scopes
        allowed_scopes:,
        # OAuth client type
        client_type:,
        # The name of the OAuth client
        name:,
        # URL of the client logo
        logo_uri: nil,
        # URL of the client's privacy policy
        policy_uri: nil,
        # List of redirect URIs (required for authorization_code flow)
        redirect_uris: nil,
        # Whether PKCE (Proof Key for Code Exchange) is required for this client
        require_pkce: nil,
        # URL of the client's terms of service
        tos_uri: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            allowed_grant_types:
              T::Array[
                Telnyx::OAuthClientCreateParams::AllowedGrantType::OrSymbol
              ],
            allowed_scopes: T::Array[String],
            client_type: Telnyx::OAuthClientCreateParams::ClientType::OrSymbol,
            name: String,
            logo_uri: String,
            policy_uri: String,
            redirect_uris: T::Array[String],
            require_pkce: T::Boolean,
            tos_uri: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      module AllowedGrantType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::OAuthClientCreateParams::AllowedGrantType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLIENT_CREDENTIALS =
          T.let(
            :client_credentials,
            Telnyx::OAuthClientCreateParams::AllowedGrantType::TaggedSymbol
          )
        AUTHORIZATION_CODE =
          T.let(
            :authorization_code,
            Telnyx::OAuthClientCreateParams::AllowedGrantType::TaggedSymbol
          )
        REFRESH_TOKEN =
          T.let(
            :refresh_token,
            Telnyx::OAuthClientCreateParams::AllowedGrantType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::OAuthClientCreateParams::AllowedGrantType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # OAuth client type
      module ClientType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::OAuthClientCreateParams::ClientType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC =
          T.let(
            :public,
            Telnyx::OAuthClientCreateParams::ClientType::TaggedSymbol
          )
        CONFIDENTIAL =
          T.let(
            :confidential,
            Telnyx::OAuthClientCreateParams::ClientType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::OAuthClientCreateParams::ClientType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
