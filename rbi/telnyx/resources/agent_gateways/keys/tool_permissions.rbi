# typed: strong

module Telnyx
  module Resources
    class AgentGateways
      class Keys
        # The MCP servers and tools a key or team may use.
        class ToolPermissions
          # Replaces the grant whole and returns it. Every server must be one of the
          # instance's MCP servers or APIs, named once. A key reaches the servers granted to
          # it or to its team, and the servers open to every key; when both grant, only the
          # servers in both. The instance must be `ready`; otherwise the request answers
          # `409`.
          sig do
            params(
              key_id: String,
              instance_id: String,
              servers:
                T::Array[
                  Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions::Server::OrHash
                ],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::AgentGateways::Keys::AgentGatewayToolPermissionsResponse
            )
          end
          def create(
            # Path param: The key's `id`, a 64-character hash the instance stores in place of
            # the key.
            key_id,
            # Path param: The Agent Gateway's `id`.
            instance_id:,
            # Body param: The servers granted, each with its tools. `[]` grants none.
            servers:,
            request_options: {}
          )
          end

          # Returns the MCP servers and APIs the key may use, and the tools within each.
          # `servers: []` means none. The instance must be `ready`; otherwise the request
          # answers `409`.
          sig do
            params(
              key_id: String,
              instance_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::AgentGateways::Keys::AgentGatewayToolPermissionsResponse
            )
          end
          def list(
            # The key's `id`, a 64-character hash the instance stores in place of the key.
            key_id,
            # The Agent Gateway's `id`.
            instance_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
