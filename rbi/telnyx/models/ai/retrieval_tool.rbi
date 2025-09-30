# typed: strong

module Telnyx
  module Models
    module AI
      class RetrievalTool < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::RetrievalTool, Telnyx::Internal::AnyHash)
          end

        sig { returns(Telnyx::AI::InferenceEmbeddingBucketIDs) }
        attr_reader :retrieval

        sig do
          params(
            retrieval: Telnyx::AI::InferenceEmbeddingBucketIDs::OrHash
          ).void
        end
        attr_writer :retrieval

        sig { returns(Telnyx::AI::RetrievalTool::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            retrieval: Telnyx::AI::InferenceEmbeddingBucketIDs::OrHash,
            type: Telnyx::AI::RetrievalTool::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(retrieval:, type:)
        end

        sig do
          override.returns(
            {
              retrieval: Telnyx::AI::InferenceEmbeddingBucketIDs,
              type: Telnyx::AI::RetrievalTool::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::RetrievalTool::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RETRIEVAL =
            T.let(:retrieval, Telnyx::AI::RetrievalTool::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::RetrievalTool::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
