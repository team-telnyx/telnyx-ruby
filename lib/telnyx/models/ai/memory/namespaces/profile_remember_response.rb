# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#remember
          class ProfileRememberResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::AI::Memory::Namespaces::ProfileRememberResponse::Data]
            required :data, -> { Telnyx::Models::AI::Memory::Namespaces::ProfileRememberResponse::Data }

            # @!method initialize(data:)
            #   @param data [Telnyx::Models::AI::Memory::Namespaces::ProfileRememberResponse::Data]

            # @see Telnyx::Models::AI::Memory::Namespaces::ProfileRememberResponse#data
            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute operation_id
              #
              #   @return [String]
              required :operation_id, String

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

              # @!method initialize(operation_id:, profile_id:, source_id:)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Memory::Namespaces::ProfileRememberResponse::Data} for more
              #   details.
              #
              #   @param operation_id [String]
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
