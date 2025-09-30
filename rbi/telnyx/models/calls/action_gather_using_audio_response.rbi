# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionGatherUsingAudioResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Calls::ActionGatherUsingAudioResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Calls::CallControlCommandResult)) }
        attr_reader :data

        sig do
          params(data: Telnyx::Calls::CallControlCommandResult::OrHash).void
        end
        attr_writer :data

        sig do
          params(data: Telnyx::Calls::CallControlCommandResult::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: Telnyx::Calls::CallControlCommandResult })
        end
        def to_hash
        end
      end
    end
  end
end
