# typed: strong

module Telnyx
  module Models
    module AgentGateways
      module Teams
        class ToolPermissionCreateParams < Telnyx::Models::AgentGateways::Keys::AgentGatewayToolPermissions
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AgentGateways::Teams::ToolPermissionCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :instance_id

          sig { returns(String) }
          attr_accessor :team_id

          sig do
            params(
              instance_id: String,
              team_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(instance_id:, team_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                instance_id: String,
                team_id: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
