# typed: strong

module Telnyx
  module Models
    class OAuthRegisterResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OAuthRegisterResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique client identifier
      sig { returns(String) }
      attr_accessor :client_id

      # Unix timestamp of when the client ID was issued
      sig { returns(Integer) }
      attr_accessor :client_id_issued_at

      # Human-readable client name
      sig { returns(T.nilable(String)) }
      attr_reader :client_name

      sig { params(client_name: String).void }
      attr_writer :client_name

      # Client secret (only for confidential clients)
      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      sig { params(client_secret: String).void }
      attr_writer :client_secret

      # Array of allowed grant types
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :grant_types

      sig { params(grant_types: T::Array[String]).void }
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

      # Array of redirection URIs
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :redirect_uris

      sig { params(redirect_uris: T::Array[String]).void }
      attr_writer :redirect_uris

      # Array of allowed response types
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :response_types

      sig { params(response_types: T::Array[String]).void }
      attr_writer :response_types

      # Space-separated scope values
      sig { returns(T.nilable(String)) }
      attr_reader :scope

      sig { params(scope: String).void }
      attr_writer :scope

      # Token endpoint authentication method
      sig { returns(T.nilable(String)) }
      attr_reader :token_endpoint_auth_method

      sig { params(token_endpoint_auth_method: String).void }
      attr_writer :token_endpoint_auth_method

      # URL of the client's terms of service
      sig { returns(T.nilable(String)) }
      attr_reader :tos_uri

      sig { params(tos_uri: String).void }
      attr_writer :tos_uri

      sig do
        params(
          client_id: String,
          client_id_issued_at: Integer,
          client_name: String,
          client_secret: String,
          grant_types: T::Array[String],
          logo_uri: String,
          policy_uri: String,
          redirect_uris: T::Array[String],
          response_types: T::Array[String],
          scope: String,
          token_endpoint_auth_method: String,
          tos_uri: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique client identifier
        client_id:,
        # Unix timestamp of when the client ID was issued
        client_id_issued_at:,
        # Human-readable client name
        client_name: nil,
        # Client secret (only for confidential clients)
        client_secret: nil,
        # Array of allowed grant types
        grant_types: nil,
        # URL of the client logo
        logo_uri: nil,
        # URL of the client's privacy policy
        policy_uri: nil,
        # Array of redirection URIs
        redirect_uris: nil,
        # Array of allowed response types
        response_types: nil,
        # Space-separated scope values
        scope: nil,
        # Token endpoint authentication method
        token_endpoint_auth_method: nil,
        # URL of the client's terms of service
        tos_uri: nil
      )
      end

      sig do
        override.returns(
          {
            client_id: String,
            client_id_issued_at: Integer,
            client_name: String,
            client_secret: String,
            grant_types: T::Array[String],
            logo_uri: String,
            policy_uri: String,
            redirect_uris: T::Array[String],
            response_types: T::Array[String],
            scope: String,
            token_endpoint_auth_method: String,
            tos_uri: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
