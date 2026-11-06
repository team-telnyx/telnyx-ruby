# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayStaticAuth < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #   How the credential is sent: `api_key` as `X-API-Key: <value>`, `bearer_token` as
        #   `Authorization: Bearer <value>`, `basic` as
        #   `Authorization: Basic <base64 of value>` with `value` in the form
        #   `user:password`, `token` as `Authorization: token <value>`, and `authorization`
        #   as `Authorization: <value>`.
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth::Type]
        required :type, enum: -> { Telnyx::AgentGateways::AgentGatewayStaticAuth::Type }

        # @!attribute header
        #   A header name that replaces `X-API-Key` or `Authorization`.
        #
        #   @return [String, nil]
        optional :header, String, nil?: true

        request_only do
          # @!attribute value
          #   The credential.
          #
          #   @return [String]
          required :value, String
        end

        # @!method initialize(type:, value:, header: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayStaticAuth} for more details.
        #
        #   A static credential the gateway sends on every request. Write-only: responses
        #   show its `type` only.
        #
        #   @param type [Symbol, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth::Type] How the credential is sent: `api_key` as `X-API-Key: <value>`, `bearer_token` as
        #
        #   @param value [String] The credential.
        #
        #   @param header [String, nil] A header name that replaces `X-API-Key` or `Authorization`.

        # How the credential is sent: `api_key` as `X-API-Key: <value>`, `bearer_token` as
        # `Authorization: Bearer <value>`, `basic` as
        # `Authorization: Basic <base64 of value>` with `value` in the form
        # `user:password`, `token` as `Authorization: token <value>`, and `authorization`
        # as `Authorization: <value>`.
        #
        # @see Telnyx::Models::AgentGateways::AgentGatewayStaticAuth#type
        module Type
          extend Telnyx::Internal::Type::Enum

          API_KEY = :api_key
          BEARER_TOKEN = :bearer_token
          BASIC = :basic
          TOKEN = :token
          AUTHORIZATION = :authorization

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    AgentGatewayStaticAuth = AgentGateways::AgentGatewayStaticAuth
  end
end
