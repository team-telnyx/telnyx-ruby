# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        class RetrievalSettings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Collections::RetrievalSettings,
                Telnyx::Internal::AnyHash
              )
            end

          # Retrieval strategy. `vector` runs semantic similarity search; `hybrid` combines
          # vector similarity with keyword matching; `keyword` runs lexical (BM25) matching.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::Collections::RetrievalSettings::RetrievalType::OrSymbol
              )
            )
          end
          attr_reader :retrieval_type

          sig do
            params(
              retrieval_type:
                Telnyx::AI::Collections::RetrievalSettings::RetrievalType::OrSymbol
            ).void
          end
          attr_writer :retrieval_type

          # Number of top results to retrieve (1–50).
          sig { returns(T.nilable(Integer)) }
          attr_reader :top_k

          sig { params(top_k: Integer).void }
          attr_writer :top_k

          # How documents are retrieved when searching the collection.
          sig do
            params(
              retrieval_type:
                Telnyx::AI::Collections::RetrievalSettings::RetrievalType::OrSymbol,
              top_k: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Retrieval strategy. `vector` runs semantic similarity search; `hybrid` combines
            # vector similarity with keyword matching; `keyword` runs lexical (BM25) matching.
            retrieval_type: nil,
            # Number of top results to retrieve (1–50).
            top_k: nil
          )
          end

          sig do
            override.returns(
              {
                retrieval_type:
                  Telnyx::AI::Collections::RetrievalSettings::RetrievalType::OrSymbol,
                top_k: Integer
              }
            )
          end
          def to_hash
          end

          # Retrieval strategy. `vector` runs semantic similarity search; `hybrid` combines
          # vector similarity with keyword matching; `keyword` runs lexical (BM25) matching.
          module RetrievalType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::Collections::RetrievalSettings::RetrievalType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VECTOR =
              T.let(
                :vector,
                Telnyx::AI::Collections::RetrievalSettings::RetrievalType::TaggedSymbol
              )
            HYBRID =
              T.let(
                :hybrid,
                Telnyx::AI::Collections::RetrievalSettings::RetrievalType::TaggedSymbol
              )
            KEYWORD =
              T.let(
                :keyword,
                Telnyx::AI::Collections::RetrievalSettings::RetrievalType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Collections::RetrievalSettings::RetrievalType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
