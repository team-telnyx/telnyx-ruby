# typed: strong

module Telnyx
  module Models
    AgentGatewayStaticAuth = AgentGateways::AgentGatewayStaticAuth

    module AgentGateways
      class AgentGatewayStaticAuth < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayStaticAuth,
              Telnyx::Internal::AnyHash
            )
          end

        # How the credential is sent: `api_key` as `X-API-Key: <value>`, `bearer_token` as
        # `Authorization: Bearer <value>`, `basic` as
        # `Authorization: Basic <base64 of value>` with `value` in the form
        # `user:password`, `token` as `Authorization: token <value>`, and `authorization`
        # as `Authorization: <value>`.
        sig do
          returns(Telnyx::AgentGateways::AgentGatewayStaticAuth::Type::OrSymbol)
        end
        attr_accessor :type

        # A header name that replaces `X-API-Key` or `Authorization`.
        sig { returns(T.nilable(String)) }
        attr_accessor :header

        # The credential.
        sig { returns(String) }
        attr_accessor :value

        # A static credential the gateway sends on every request. Write-only: responses
        # show its `type` only.
        sig do
          params(
            type: Telnyx::AgentGateways::AgentGatewayStaticAuth::Type::OrSymbol,
            value: String,
            header: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # How the credential is sent: `api_key` as `X-API-Key: <value>`, `bearer_token` as
          # `Authorization: Bearer <value>`, `basic` as
          # `Authorization: Basic <base64 of value>` with `value` in the form
          # `user:password`, `token` as `Authorization: token <value>`, and `authorization`
          # as `Authorization: <value>`.
          type:,
          # The credential.
          value:,
          # A header name that replaces `X-API-Key` or `Authorization`.
          header: nil
        )
        end

        sig do
          override.returns(
            {
              type:
                Telnyx::AgentGateways::AgentGatewayStaticAuth::Type::OrSymbol,
              value: String,
              header: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # How the credential is sent: `api_key` as `X-API-Key: <value>`, `bearer_token` as
        # `Authorization: Bearer <value>`, `basic` as
        # `Authorization: Basic <base64 of value>` with `value` in the form
        # `user:password`, `token` as `Authorization: token <value>`, and `authorization`
        # as `Authorization: <value>`.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AgentGateways::AgentGatewayStaticAuth::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          API_KEY =
            T.let(
              :api_key,
              Telnyx::AgentGateways::AgentGatewayStaticAuth::Type::TaggedSymbol
            )
          BEARER_TOKEN =
            T.let(
              :bearer_token,
              Telnyx::AgentGateways::AgentGatewayStaticAuth::Type::TaggedSymbol
            )
          BASIC =
            T.let(
              :basic,
              Telnyx::AgentGateways::AgentGatewayStaticAuth::Type::TaggedSymbol
            )
          TOKEN =
            T.let(
              :token,
              Telnyx::AgentGateways::AgentGatewayStaticAuth::Type::TaggedSymbol
            )
          AUTHORIZATION =
            T.let(
              :authorization,
              Telnyx::AgentGateways::AgentGatewayStaticAuth::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::AgentGatewayStaticAuth::Type::TaggedSymbol
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
