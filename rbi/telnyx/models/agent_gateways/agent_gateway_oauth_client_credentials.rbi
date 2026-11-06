# typed: strong

module Telnyx
  module Models
    AgentGatewayOAuthClientCredentials =
      AgentGateways::AgentGatewayOAuthClientCredentials

    module AgentGateways
      class AgentGatewayOAuthClientCredentials < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials,
              Telnyx::Internal::AnyHash
            )
          end

        # The OAuth provider's token endpoint.
        sig { returns(String) }
        attr_accessor :token_url

        sig { returns(Symbol) }
        attr_accessor :type

        # The token's audience, sent in the token request.
        sig { returns(T.nilable(String)) }
        attr_accessor :audience

        # Whether the client ID and secret go in the token request's body or as HTTP Basic
        # authentication.
        sig do
          returns(
            T.nilable(
              Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::CredentialsIn::OrSymbol
            )
          )
        end
        attr_reader :credentials_in

        sig do
          params(
            credentials_in:
              Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::CredentialsIn::OrSymbol
          ).void
        end
        attr_writer :credentials_in

        # The resource the token is for, sent in the token request.
        sig { returns(T.nilable(String)) }
        attr_accessor :resource

        # The scopes to request.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :scopes

        sig { params(scopes: T::Array[String]).void }
        attr_writer :scopes

        sig { returns(String) }
        attr_accessor :client_id

        sig { returns(String) }
        attr_accessor :client_secret

        # The gateway gets its own access token with the `client_credentials` grant and
        # sends it as a bearer token on every request, renewing it before it expires. The
        # client ID and secret are write-only.
        sig do
          params(
            client_id: String,
            client_secret: String,
            token_url: String,
            audience: T.nilable(String),
            credentials_in:
              Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::CredentialsIn::OrSymbol,
            resource: T.nilable(String),
            scopes: T::Array[String],
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          client_id:,
          client_secret:,
          # The OAuth provider's token endpoint.
          token_url:,
          # The token's audience, sent in the token request.
          audience: nil,
          # Whether the client ID and secret go in the token request's body or as HTTP Basic
          # authentication.
          credentials_in: nil,
          # The resource the token is for, sent in the token request.
          resource: nil,
          # The scopes to request.
          scopes: nil,
          type: :oauth_client_credentials
        )
        end

        sig do
          override.returns(
            {
              client_id: String,
              client_secret: String,
              token_url: String,
              type: Symbol,
              audience: T.nilable(String),
              credentials_in:
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::CredentialsIn::OrSymbol,
              resource: T.nilable(String),
              scopes: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # Whether the client ID and secret go in the token request's body or as HTTP Basic
        # authentication.
        module CredentialsIn
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::CredentialsIn
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BODY =
            T.let(
              :body,
              Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::CredentialsIn::TaggedSymbol
            )
          BASIC =
            T.let(
              :basic,
              Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::CredentialsIn::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::CredentialsIn::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
