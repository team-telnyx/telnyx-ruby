# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantsList < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantsList, Telnyx::Internal::AnyHash)
          end

        sig { returns(T::Array[Telnyx::AI::InferenceEmbedding]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[Telnyx::AI::InferenceEmbedding::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns({ data: T::Array[Telnyx::AI::InferenceEmbedding] })
        end
        def to_hash
        end
      end
    end
  end
end
