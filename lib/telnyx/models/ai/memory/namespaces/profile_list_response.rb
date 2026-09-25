# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#list
          class ProfileListResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute memory_count
            #   Memories stored under this profile, including the consolidated ones that
            #   paraphrase others. Listings are ordered by it.
            #
            #   @return [Integer]
            required :memory_count, Integer

            # @!attribute profile_id
            #
            #   @return [String]
            required :profile_id, String

            # @!method initialize(memory_count:, profile_id:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Memory::Namespaces::ProfileListResponse} for more details.
            #
            #   @param memory_count [Integer] Memories stored under this profile, including the consolidated ones that paraphr
            #
            #   @param profile_id [String]
          end
        end
      end
    end
  end
end
