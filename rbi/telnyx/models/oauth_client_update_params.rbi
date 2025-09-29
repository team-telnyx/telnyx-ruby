# typed: strong

module Telnyx
  module Models
    class OAuthClientUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::OAuthClientUpdateParams, Telnyx::Internal::AnyHash)
        end

      # List of allowed OAuth grant types
      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::OAuthClientUpdateParams::AllowedGrantType::OrSymbol
            ]
          )
        )
      end
      attr_reader :allowed_grant_types

      sig do
        params(
          allowed_grant_types:
            T::Array[
              Telnyx::OAuthClientUpdateParams::AllowedGrantType::OrSymbol
            ]
        ).void
      end
      attr_writer :allowed_grant_types

      # List of allowed OAuth scopes
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :allowed_scopes

      sig { params(allowed_scopes: T::Array[String]).void }
      attr_writer :allowed_scopes

      # URL of the client logo
      sig { returns(T.nilable(String)) }
      attr_reader :logo_uri

      sig { params(logo_uri: String).void }
      attr_writer :logo_uri

      # The name of the OAuth client
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # URL of the client's privacy policy
      sig { returns(T.nilable(String)) }
      attr_reader :policy_uri

      sig { params(policy_uri: String).void }
      attr_writer :policy_uri

      # List of redirect URIs
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
              Telnyx::OAuthClientUpdateParams::AllowedGrantType::OrSymbol
            ],
          allowed_scopes: T::Array[String],
          logo_uri: String,
          name: String,
          policy_uri: String,
          redirect_uris: T::Array[String],
          require_pkce: T::Boolean,
          tos_uri: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # List of allowed OAuth grant types
        allowed_grant_types: nil,
        # List of allowed OAuth scopes
        allowed_scopes: nil,
        # URL of the client logo
        logo_uri: nil,
        # The name of the OAuth client
        name: nil,
        # URL of the client's privacy policy
        policy_uri: nil,
        # List of redirect URIs
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
                Telnyx::OAuthClientUpdateParams::AllowedGrantType::OrSymbol
              ],
            allowed_scopes: T::Array[String],
            logo_uri: String,
            name: String,
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
            T.all(Symbol, Telnyx::OAuthClientUpdateParams::AllowedGrantType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLIENT_CREDENTIALS =
          T.let(
            :client_credentials,
            Telnyx::OAuthClientUpdateParams::AllowedGrantType::TaggedSymbol
          )
        AUTHORIZATION_CODE =
          T.let(
            :authorization_code,
            Telnyx::OAuthClientUpdateParams::AllowedGrantType::TaggedSymbol
          )
        REFRESH_TOKEN =
          T.let(
            :refresh_token,
            Telnyx::OAuthClientUpdateParams::AllowedGrantType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::OAuthClientUpdateParams::AllowedGrantType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
