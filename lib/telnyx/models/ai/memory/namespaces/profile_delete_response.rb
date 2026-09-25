# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#delete
          class ProfileDeleteResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse::Data]
            required :data, -> { Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse::Data }

            # @!method initialize(data:)
            #   @param data [Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse::Data]

            # @see Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse#data
            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute memories_deleted
              #   Memories the profile held and no longer does, counted before and after. A report
              #   rather than an audit: memory moves in the background between the two counts. The
              #   status carries the outcome.
              #
              #   @return [Integer]
              required :memories_deleted, Integer

              # @!attribute profile_id
              #
              #   @return [String]
              required :profile_id, String

              # @!method initialize(memories_deleted:, profile_id:)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse::Data} for more
              #   details.
              #
              #   @param memories_deleted [Integer] Memories the profile held and no longer does, counted before and after. A report
              #
              #   @param profile_id [String]
            end
          end
        end
      end
    end
  end
end
