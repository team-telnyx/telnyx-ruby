# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      module Keys
        class AgentGatewayToolPermissions < Telnyx::Internal::Type::BaseModel
          # @!attribute servers
          #   The servers granted, each with its tools. `[]` grants none.
          #
          #   @return [Array<Telnyx::Models::AgentGateways::Keys::AgentGatewayToolPermissions::Server>]
          required :servers,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions::Server] }

          # @!method initialize(servers:)
          #   @param servers [Array<Telnyx::Models::AgentGateways::Keys::AgentGatewayToolPermissions::Server>] The servers granted, each with its tools. `[]` grants none.

          class Server < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   An MCP server's or API's `id` on the instance.
            #
            #   @return [String]
            required :id, String

            # @!attribute tools
            #   The tools the grant covers, by name without the server prefix. `[]` covers every
            #   tool the server exposes.
            #
            #   @return [Array<String>, nil]
            optional :tools, Telnyx::Internal::Type::ArrayOf[String]

            # @!method initialize(id:, tools: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AgentGateways::Keys::AgentGatewayToolPermissions::Server} for
            #   more details.
            #
            #   @param id [String] An MCP server's or API's `id` on the instance.
            #
            #   @param tools [Array<String>] The tools the grant covers, by name without the server prefix. `[]` covers every
          end
        end
      end
    end
  end
end
