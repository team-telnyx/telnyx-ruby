# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class TelnyxAgentLinkResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Telnyx::AI::Missions::Runs::TelnyxAgentData) }
            attr_reader :data

            sig do
              params(
                data: Telnyx::AI::Missions::Runs::TelnyxAgentData::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data: Telnyx::AI::Missions::Runs::TelnyxAgentData::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                { data: Telnyx::AI::Missions::Runs::TelnyxAgentData }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
