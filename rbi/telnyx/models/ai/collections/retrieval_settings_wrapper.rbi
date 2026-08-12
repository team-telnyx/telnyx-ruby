# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        class RetrievalSettingsWrapper < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Collections::RetrievalSettingsWrapper,
                Telnyx::Internal::AnyHash
              )
            end

          # How documents are retrieved when searching the collection.
          sig { returns(T.nilable(Telnyx::AI::Collections::RetrievalSettings)) }
          attr_reader :retrieval

          sig do
            params(
              retrieval: Telnyx::AI::Collections::RetrievalSettings::OrHash
            ).void
          end
          attr_writer :retrieval

          # Identifies the record type. Always `ai_collection_settings`.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig do
            params(
              record_type: String,
              retrieval: Telnyx::AI::Collections::RetrievalSettings::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the record type. Always `ai_collection_settings`.
            record_type: nil,
            # How documents are retrieved when searching the collection.
            retrieval: nil
          )
          end

          sig do
            override.returns(
              {
                record_type: String,
                retrieval: Telnyx::AI::Collections::RetrievalSettings
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
