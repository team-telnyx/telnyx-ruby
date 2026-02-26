# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class EventGetEventDetailsResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Telnyx::AI::Missions::Runs::EventData) }
            attr_reader :data

            sig do
              params(data: Telnyx::AI::Missions::Runs::EventData::OrHash).void
            end
            attr_writer :data

            sig do
              params(
                data: Telnyx::AI::Missions::Runs::EventData::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns({ data: Telnyx::AI::Missions::Runs::EventData })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
