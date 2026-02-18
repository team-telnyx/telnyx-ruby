# typed: strong

module Telnyx
  module Models
    module AI
      class MissionUpdateMissionResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::MissionUpdateMissionResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::AI::MissionData) }
        attr_reader :data

        sig { params(data: Telnyx::AI::MissionData::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::AI::MissionData::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: Telnyx::AI::MissionData }) }
        def to_hash
        end
      end
    end
  end
end
