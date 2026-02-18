# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        class RunResumeRunResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Missions::RunResumeRunResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::AI::Missions::MissionRunData) }
          attr_reader :data

          sig do
            params(data: Telnyx::AI::Missions::MissionRunData::OrHash).void
          end
          attr_writer :data

          sig do
            params(data: Telnyx::AI::Missions::MissionRunData::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(data:)
          end

          sig do
            override.returns({ data: Telnyx::AI::Missions::MissionRunData })
          end
          def to_hash
          end
        end
      end
    end
  end
end
