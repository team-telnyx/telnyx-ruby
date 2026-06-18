# typed: strong

module Telnyx
  module Models
    module AI
      class EventsListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::EventsListResponse, Telnyx::Internal::AnyHash)
          end

        sig { returns(T::Array[Telnyx::AI::Missions::Runs::EventData]) }
        attr_accessor :data

        sig { returns(Telnyx::AI::Assistants::Tests::TestSuites::Meta) }
        attr_reader :meta

        sig do
          params(
            meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::AI::Missions::Runs::EventData::OrHash],
            meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::AI::Missions::Runs::EventData],
              meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
