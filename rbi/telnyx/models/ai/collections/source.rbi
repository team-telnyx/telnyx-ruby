# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        class Source < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Telnyx::AI::Collections::Source, Telnyx::Internal::AnyHash)
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The Telnyx Storage bucket name. Present only for `bucket` sources.
          sig { returns(T.nilable(String)) }
          attr_reader :bucket_id

          sig { params(bucket_id: String).void }
          attr_writer :bucket_id

          sig { returns(T.nilable(String)) }
          attr_reader :collection_id

          sig { params(collection_id: String).void }
          attr_writer :collection_id

          # Identifies the record type. Always `ai_collection_source`.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          # The type of Telnyx data attached as a source. `bucket` requires an additional
          # `bucket_id`. Only `voice` is searchable today; `meeting_bot`, `message`, and
          # `bucket` attach but are not yet searchable (Coming soon).
          sig do
            returns(
              T.nilable(Telnyx::AI::Collections::SourceType::TaggedSymbol)
            )
          end
          attr_reader :source_type

          sig do
            params(
              source_type: Telnyx::AI::Collections::SourceType::OrSymbol
            ).void
          end
          attr_writer :source_type

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              id: String,
              bucket_id: String,
              collection_id: String,
              record_type: String,
              source_type: Telnyx::AI::Collections::SourceType::OrSymbol,
              status: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            # The Telnyx Storage bucket name. Present only for `bucket` sources.
            bucket_id: nil,
            collection_id: nil,
            # Identifies the record type. Always `ai_collection_source`.
            record_type: nil,
            # The type of Telnyx data attached as a source. `bucket` requires an additional
            # `bucket_id`. Only `voice` is searchable today; `meeting_bot`, `message`, and
            # `bucket` attach but are not yet searchable (Coming soon).
            source_type: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                bucket_id: String,
                collection_id: String,
                record_type: String,
                source_type: Telnyx::AI::Collections::SourceType::TaggedSymbol,
                status: String
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
