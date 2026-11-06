# typed: strong

module Telnyx
  module Models
    module AgentGateways
      module Keys
        class AgentGatewayToolPermissions < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions,
                Telnyx::Internal::AnyHash
              )
            end

          # The servers granted, each with its tools. `[]` grants none.
          sig do
            returns(
              T::Array[
                Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions::Server
              ]
            )
          end
          attr_accessor :servers

          sig do
            params(
              servers:
                T::Array[
                  Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions::Server::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The servers granted, each with its tools. `[]` grants none.
            servers:
          )
          end

          sig do
            override.returns(
              {
                servers:
                  T::Array[
                    Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions::Server
                  ]
              }
            )
          end
          def to_hash
          end

          class Server < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions::Server,
                  Telnyx::Internal::AnyHash
                )
              end

            # An MCP server's or API's `id` on the instance.
            sig { returns(String) }
            attr_accessor :id

            # The tools the grant covers, by name without the server prefix. `[]` covers every
            # tool the server exposes.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :tools

            sig { params(tools: T::Array[String]).void }
            attr_writer :tools

            sig do
              params(id: String, tools: T::Array[String]).returns(
                T.attached_class
              )
            end
            def self.new(
              # An MCP server's or API's `id` on the instance.
              id:,
              # The tools the grant covers, by name without the server prefix. `[]` covers every
              # tool the server exposes.
              tools: nil
            )
            end

            sig { override.returns({ id: String, tools: T::Array[String] }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
