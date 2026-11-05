# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class KeyListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::KeyListParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        # Only the keys of this team.
        sig { returns(T.nilable(String)) }
        attr_reader :team_id

        sig { params(team_id: String).void }
        attr_writer :team_id

        sig do
          params(
            instance_id: String,
            team_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
          # Only the keys of this team.
          team_id: nil,
          request_options: {}
        )
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
