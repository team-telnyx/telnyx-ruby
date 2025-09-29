# typed: strong

module Telnyx
  module Models
    class OAuthTokenParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::OAuthTokenParams, Telnyx::Internal::AnyHash)
        end

      # OAuth 2.0 grant type
      sig { returns(Telnyx::OAuthTokenParams::GrantType::OrSymbol) }
      attr_accessor :grant_type

      # OAuth client ID (if not using HTTP Basic auth)
      sig { returns(T.nilable(String)) }
      attr_reader :client_id

      sig { params(client_id: String).void }
      attr_writer :client_id

      # OAuth client secret (if not using HTTP Basic auth)
      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      sig { params(client_secret: String).void }
      attr_writer :client_secret

      # Authorization code (for authorization_code flow)
      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      # PKCE code verifier (for authorization_code flow)
      sig { returns(T.nilable(String)) }
      attr_reader :code_verifier

      sig { params(code_verifier: String).void }
      attr_writer :code_verifier

      # Redirect URI (for authorization_code flow)
      sig { returns(T.nilable(String)) }
      attr_reader :redirect_uri

      sig { params(redirect_uri: String).void }
      attr_writer :redirect_uri

      # Refresh token (for refresh_token flow)
      sig { returns(T.nilable(String)) }
      attr_reader :refresh_token

      sig { params(refresh_token: String).void }
      attr_writer :refresh_token

      # Space-separated list of requested scopes (for client_credentials)
      sig { returns(T.nilable(String)) }
      attr_reader :scope

      sig { params(scope: String).void }
      attr_writer :scope

      sig do
        params(
          grant_type: Telnyx::OAuthTokenParams::GrantType::OrSymbol,
          client_id: String,
          client_secret: String,
          code: String,
          code_verifier: String,
          redirect_uri: String,
          refresh_token: String,
          scope: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # OAuth 2.0 grant type
        grant_type:,
        # OAuth client ID (if not using HTTP Basic auth)
        client_id: nil,
        # OAuth client secret (if not using HTTP Basic auth)
        client_secret: nil,
        # Authorization code (for authorization_code flow)
        code: nil,
        # PKCE code verifier (for authorization_code flow)
        code_verifier: nil,
        # Redirect URI (for authorization_code flow)
        redirect_uri: nil,
        # Refresh token (for refresh_token flow)
        refresh_token: nil,
        # Space-separated list of requested scopes (for client_credentials)
        scope: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            grant_type: Telnyx::OAuthTokenParams::GrantType::OrSymbol,
            client_id: String,
            client_secret: String,
            code: String,
            code_verifier: String,
            redirect_uri: String,
            refresh_token: String,
            scope: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # OAuth 2.0 grant type
      module GrantType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::OAuthTokenParams::GrantType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLIENT_CREDENTIALS =
          T.let(
            :client_credentials,
            Telnyx::OAuthTokenParams::GrantType::TaggedSymbol
          )
        AUTHORIZATION_CODE =
          T.let(
            :authorization_code,
            Telnyx::OAuthTokenParams::GrantType::TaggedSymbol
          )
        REFRESH_TOKEN =
          T.let(
            :refresh_token,
            Telnyx::OAuthTokenParams::GrantType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::OAuthTokenParams::GrantType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
