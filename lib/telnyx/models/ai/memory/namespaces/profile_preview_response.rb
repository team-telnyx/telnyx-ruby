# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#preview
          class ProfilePreviewResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewResponse::Data]
            required :data, -> { Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewResponse::Data }

            # @!method initialize(data:)
            #   @param data [Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewResponse::Data]

            # @see Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewResponse#data
            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute profile_id
              #
              #   @return [String]
              required :profile_id, String

              # @!attribute text
              #   The summary this profile would carry under the candidate note. Null when nothing
              #   was generated -- the same signal `GET /summary` uses for a profile with no card
              #   yet.
              #
              #   @return [String, nil]
              required :text, String, nil?: true

              # @!method initialize(profile_id:, text:)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewResponse::Data} for more
              #   details.
              #
              #   @param profile_id [String]
              #
              #   @param text [String, nil] The summary this profile would carry under the candidate note. Null when nothing
            end
          end
        end
      end
    end
  end
end
