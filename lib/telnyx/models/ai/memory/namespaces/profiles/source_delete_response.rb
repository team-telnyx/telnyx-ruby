# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles::Sources#delete
            class SourceDeleteResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute data
              #
              #   @return [Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse::Data]
              required :data, -> { Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse::Data }

              # @!method initialize(data:)
              #   @param data [Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse::Data]

              # @see Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse#data
              class Data < Telnyx::Internal::Type::BaseModel
                # @!attribute memories_deleted
                #   Memories the profile held and no longer does, counted before and after across
                #   the whole profile: it includes memories derived from this source together with
                #   others, and anything else the profile lost in between. A report rather than an
                #   audit. The status carries the outcome.
                #
                #   @return [Integer]
                required :memories_deleted, Integer

                # @!attribute profile_id
                #
                #   @return [String]
                required :profile_id, String

                # @!attribute source_id
                #   Identifies one source within its profile: an ingested session, or one remembered
                #   fact. Returned by `ingest` and `remember` when the write is accepted.
                #   Re-ingesting a session keeps its source id.
                #
                #   @return [String]
                required :source_id, String

                # @!method initialize(memories_deleted:, profile_id:, source_id:)
                #   Some parameter documentations has been truncated, see
                #   {Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse::Data}
                #   for more details.
                #
                #   @param memories_deleted [Integer] Memories the profile held and no longer does, counted before and after across th
                #
                #   @param profile_id [String]
                #
                #   @param source_id [String] Identifies one source within its profile: an ingested session, or one remembered
              end
            end
          end
        end
      end
    end
  end
end
