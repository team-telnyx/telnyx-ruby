# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionGatherUsingAudioResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Conferences::ActionGatherUsingAudioResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Conferences::ConferenceCommandResult)) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::Conferences::ConferenceCommandResult::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Conferences::ConferenceCommandResult::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Conferences::ConferenceCommandResult }
          )
        end
        def to_hash
        end
      end
    end
  end
end
