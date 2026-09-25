# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            class SourceDeleteResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse::Data
                )
              end
              attr_reader :data

              sig do
                params(
                  data:
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse::Data::OrHash
                ).void
              end
              attr_writer :data

              sig do
                params(
                  data:
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse::Data::OrHash
                ).returns(T.attached_class)
              end
              def self.new(data:)
              end

              sig do
                override.returns(
                  {
                    data:
                      Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse::Data
                  }
                )
              end
              def to_hash
              end

              class Data < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse::Data,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Memories the profile held and no longer does, counted before and after across
                # the whole profile: it includes memories derived from this source together with
                # others, and anything else the profile lost in between. A report rather than an
                # audit. The status carries the outcome.
                sig { returns(Integer) }
                attr_accessor :memories_deleted

                sig { returns(String) }
                attr_accessor :profile_id

                # Identifies one source within its profile: an ingested session, or one remembered
                # fact. Returned by `ingest` and `remember` when the write is accepted.
                # Re-ingesting a session keeps its source id.
                sig { returns(String) }
                attr_accessor :source_id

                sig do
                  params(
                    memories_deleted: Integer,
                    profile_id: String,
                    source_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Memories the profile held and no longer does, counted before and after across
                  # the whole profile: it includes memories derived from this source together with
                  # others, and anything else the profile lost in between. A report rather than an
                  # audit. The status carries the outcome.
                  memories_deleted:,
                  profile_id:,
                  # Identifies one source within its profile: an ingested session, or one remembered
                  # fact. Returned by `ingest` and `remember` when the write is accepted.
                  # Re-ingesting a session keeps its source id.
                  source_id:
                )
                end

                sig do
                  override.returns(
                    {
                      memories_deleted: Integer,
                      profile_id: String,
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
end
