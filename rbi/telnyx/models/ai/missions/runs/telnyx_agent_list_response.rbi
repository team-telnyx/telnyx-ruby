# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class TelnyxAgentListResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Missions::Runs::TelnyxAgentListResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(T::Array[Telnyx::AI::Missions::Runs::TelnyxAgentData])
            end
            attr_accessor :data

            sig do
              params(
                data:
                  T::Array[Telnyx::AI::Missions::Runs::TelnyxAgentData::OrHash]
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                { data: T::Array[Telnyx::AI::Missions::Runs::TelnyxAgentData] }
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
