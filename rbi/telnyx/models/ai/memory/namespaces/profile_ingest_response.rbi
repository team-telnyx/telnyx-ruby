# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfileIngestResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Memory::Namespaces::ProfileIngestResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                Telnyx::Models::AI::Memory::Namespaces::ProfileIngestResponse::Data
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Models::AI::Memory::Namespaces::ProfileIngestResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Models::AI::Memory::Namespaces::ProfileIngestResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Models::AI::Memory::Namespaces::ProfileIngestResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Memory::Namespaces::ProfileIngestResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :operation_id

              sig { returns(String) }
              attr_accessor :profile_id

              sig { returns(String) }
              attr_accessor :session_id

              # Identifies one source within its profile: an ingested session, or one remembered
              # fact. Returned by `ingest` and `remember` when the write is accepted.
              # Re-ingesting a session keeps its source id.
              sig { returns(String) }
              attr_accessor :source_id

              sig do
                params(
                  operation_id: String,
                  profile_id: String,
                  session_id: String,
                  source_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                operation_id:,
                profile_id:,
                session_id:,
                # Identifies one source within its profile: an ingested session, or one remembered
                # fact. Returned by `ingest` and `remember` when the write is accepted.
                # Re-ingesting a session keeps its source id.
                source_id:
              )
              end

              sig do
                override.returns(
                  {
                    operation_id: String,
                    profile_id: String,
                    session_id: String,
                    source_id: String
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
  end
end
