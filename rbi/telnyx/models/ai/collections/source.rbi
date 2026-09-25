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

          # Identifies one source within its profile: an ingested session, or one remembered
          # fact. Returned by `ingest` and `remember` when the write is accepted.
          # Re-ingesting a session keeps its source id.
          sig { returns(String) }
          attr_accessor :id

          # Memories extracted from this source. A memory derived from several sources is
          # not counted here.
          sig { returns(Integer) }
          attr_accessor :memory_count

          # The session this source was ingested as. Null for a remembered fact.
          sig { returns(T.nilable(String)) }
          attr_accessor :session_id

          # When the source was first stored.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_at

          # When the source was last written; re-ingesting moves it.
          sig { returns(T.nilable(String)) }
          attr_accessor :updated_at

          sig do
            params(
              id: String,
              memory_count: Integer,
              session_id: T.nilable(String),
              created_at: T.nilable(String),
              updated_at: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies one source within its profile: an ingested session, or one remembered
            # fact. Returned by `ingest` and `remember` when the write is accepted.
            # Re-ingesting a session keeps its source id.
            id:,
            # Memories extracted from this source. A memory derived from several sources is
            # not counted here.
            memory_count:,
            # The session this source was ingested as. Null for a remembered fact.
            session_id:,
            # When the source was first stored.
            created_at: nil,
            # When the source was last written; re-ingesting moves it.
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                memory_count: Integer,
                session_id: T.nilable(String),
                created_at: T.nilable(String),
                updated_at: T.nilable(String)
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
