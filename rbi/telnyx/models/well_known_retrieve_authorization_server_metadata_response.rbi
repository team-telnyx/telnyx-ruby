# typed: strong

module Telnyx
  module Models
    class WellKnownRetrieveAuthorizationServerMetadataResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WellKnownRetrieveAuthorizationServerMetadataResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Authorization endpoint URL
      sig { returns(T.nilable(String)) }
      attr_reader :authorization_endpoint

      sig { params(authorization_endpoint: String).void }
      attr_writer :authorization_endpoint

      # Supported PKCE code challenge methods
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :code_challenge_methods_supported

      sig { params(code_challenge_methods_supported: T::Array[String]).void }
      attr_writer :code_challenge_methods_supported

      # Supported grant types
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :grant_types_supported

      sig { params(grant_types_supported: T::Array[String]).void }
      attr_writer :grant_types_supported

      # Token introspection endpoint URL
      sig { returns(T.nilable(String)) }
      attr_reader :introspection_endpoint

      sig { params(introspection_endpoint: String).void }
      attr_writer :introspection_endpoint

      # Authorization server issuer URL
      sig { returns(T.nilable(String)) }
      attr_reader :issuer

      sig { params(issuer: String).void }
      attr_writer :issuer

      # JWK Set endpoint URL
      sig { returns(T.nilable(String)) }
      attr_reader :jwks_uri

      sig { params(jwks_uri: String).void }
      attr_writer :jwks_uri

      # Dynamic client registration endpoint URL
      sig { returns(T.nilable(String)) }
      attr_reader :registration_endpoint

      sig { params(registration_endpoint: String).void }
      attr_writer :registration_endpoint

      # Supported response types
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :response_types_supported

      sig { params(response_types_supported: T::Array[String]).void }
      attr_writer :response_types_supported

      # Supported OAuth scopes
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :scopes_supported

      sig { params(scopes_supported: T::Array[String]).void }
      attr_writer :scopes_supported

      # Token endpoint URL
      sig { returns(T.nilable(String)) }
      attr_reader :token_endpoint

      sig { params(token_endpoint: String).void }
      attr_writer :token_endpoint

      # Supported token endpoint authentication methods
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :token_endpoint_auth_methods_supported

      sig do
        params(token_endpoint_auth_methods_supported: T::Array[String]).void
      end
      attr_writer :token_endpoint_auth_methods_supported

      sig do
        params(
          authorization_endpoint: String,
          code_challenge_methods_supported: T::Array[String],
          grant_types_supported: T::Array[String],
          introspection_endpoint: String,
          issuer: String,
          jwks_uri: String,
          registration_endpoint: String,
          response_types_supported: T::Array[String],
          scopes_supported: T::Array[String],
          token_endpoint: String,
          token_endpoint_auth_methods_supported: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Authorization endpoint URL
        authorization_endpoint: nil,
        # Supported PKCE code challenge methods
        code_challenge_methods_supported: nil,
        # Supported grant types
        grant_types_supported: nil,
        # Token introspection endpoint URL
        introspection_endpoint: nil,
        # Authorization server issuer URL
        issuer: nil,
        # JWK Set endpoint URL
        jwks_uri: nil,
        # Dynamic client registration endpoint URL
        registration_endpoint: nil,
        # Supported response types
        response_types_supported: nil,
        # Supported OAuth scopes
        scopes_supported: nil,
        # Token endpoint URL
        token_endpoint: nil,
        # Supported token endpoint authentication methods
        token_endpoint_auth_methods_supported: nil
      )
      end

      sig do
        override.returns(
          {
            authorization_endpoint: String,
            code_challenge_methods_supported: T::Array[String],
            grant_types_supported: T::Array[String],
            introspection_endpoint: String,
            issuer: String,
            jwks_uri: String,
            registration_endpoint: String,
            response_types_supported: T::Array[String],
            scopes_supported: T::Array[String],
            token_endpoint: String,
            token_endpoint_auth_methods_supported: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
