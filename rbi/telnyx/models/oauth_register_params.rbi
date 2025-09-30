# typed: strong

module Telnyx
  module Models
    class OAuthRegisterParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::OAuthRegisterParams, Telnyx::Internal::AnyHash)
        end

      # Human-readable string name of the client to be presented to the end-user
      sig { returns(T.nilable(String)) }
      attr_reader :client_name

      sig { params(client_name: String).void }
      attr_writer :client_name

      # Array of OAuth 2.0 grant type strings that the client may use
      sig do
        returns(
          T.nilable(T::Array[Telnyx::OAuthRegisterParams::GrantType::OrSymbol])
        )
      end
      attr_reader :grant_types

      sig do
        params(
          grant_types:
            T::Array[Telnyx::OAuthRegisterParams::GrantType::OrSymbol]
        ).void
      end
      attr_writer :grant_types

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

      # Array of redirection URI strings for use in redirect-based flows
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :redirect_uris

      sig { params(redirect_uris: T::Array[String]).void }
      attr_writer :redirect_uris

      # Array of the OAuth 2.0 response type strings that the client may use
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :response_types

      sig { params(response_types: T::Array[String]).void }
      attr_writer :response_types

      # Space-separated string of scope values that the client may use
      sig { returns(T.nilable(String)) }
      attr_reader :scope

      sig { params(scope: String).void }
      attr_writer :scope

      # Authentication method for the token endpoint
      sig do
        returns(
          T.nilable(
            Telnyx::OAuthRegisterParams::TokenEndpointAuthMethod::OrSymbol
          )
        )
      end
      attr_reader :token_endpoint_auth_method

      sig do
        params(
          token_endpoint_auth_method:
            Telnyx::OAuthRegisterParams::TokenEndpointAuthMethod::OrSymbol
        ).void
      end
      attr_writer :token_endpoint_auth_method

      # URL of the client's terms of service
      sig { returns(T.nilable(String)) }
      attr_reader :tos_uri

      sig { params(tos_uri: String).void }
      attr_writer :tos_uri

      sig do
        params(
          client_name: String,
          grant_types:
            T::Array[Telnyx::OAuthRegisterParams::GrantType::OrSymbol],
          logo_uri: String,
          policy_uri: String,
          redirect_uris: T::Array[String],
          response_types: T::Array[String],
          scope: String,
          token_endpoint_auth_method:
            Telnyx::OAuthRegisterParams::TokenEndpointAuthMethod::OrSymbol,
          tos_uri: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Human-readable string name of the client to be presented to the end-user
        client_name: nil,
        # Array of OAuth 2.0 grant type strings that the client may use
        grant_types: nil,
        # URL of the client logo
        logo_uri: nil,
        # URL of the client's privacy policy
        policy_uri: nil,
        # Array of redirection URI strings for use in redirect-based flows
        redirect_uris: nil,
        # Array of the OAuth 2.0 response type strings that the client may use
        response_types: nil,
        # Space-separated string of scope values that the client may use
        scope: nil,
        # Authentication method for the token endpoint
        token_endpoint_auth_method: nil,
        # URL of the client's terms of service
        tos_uri: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            client_name: String,
            grant_types:
              T::Array[Telnyx::OAuthRegisterParams::GrantType::OrSymbol],
            logo_uri: String,
            policy_uri: String,
            redirect_uris: T::Array[String],
            response_types: T::Array[String],
            scope: String,
            token_endpoint_auth_method:
              Telnyx::OAuthRegisterParams::TokenEndpointAuthMethod::OrSymbol,
            tos_uri: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      module GrantType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::OAuthRegisterParams::GrantType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZATION_CODE =
          T.let(
            :authorization_code,
            Telnyx::OAuthRegisterParams::GrantType::TaggedSymbol
          )
        CLIENT_CREDENTIALS =
          T.let(
            :client_credentials,
            Telnyx::OAuthRegisterParams::GrantType::TaggedSymbol
          )
        REFRESH_TOKEN =
          T.let(
            :refresh_token,
            Telnyx::OAuthRegisterParams::GrantType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::OAuthRegisterParams::GrantType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Authentication method for the token endpoint
      module TokenEndpointAuthMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::OAuthRegisterParams::TokenEndpointAuthMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(
            :none,
            Telnyx::OAuthRegisterParams::TokenEndpointAuthMethod::TaggedSymbol
          )
        CLIENT_SECRET_BASIC =
          T.let(
            :client_secret_basic,
            Telnyx::OAuthRegisterParams::TokenEndpointAuthMethod::TaggedSymbol
          )
        CLIENT_SECRET_POST =
          T.let(
            :client_secret_post,
            Telnyx::OAuthRegisterParams::TokenEndpointAuthMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::OAuthRegisterParams::TokenEndpointAuthMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
