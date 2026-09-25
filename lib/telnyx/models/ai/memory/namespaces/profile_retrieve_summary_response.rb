# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#retrieve_summary
          class ProfileRetrieveSummaryResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse::Data]
            required :data, -> { Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse::Data }

            # @!method initialize(data:)
            #   @param data [Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse::Data]

            # @see Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse#data
            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute is_stale
              #   Whether newer memories have arrived since the summary was generated. The summary
              #   is regenerated in the background, so a true here is ordinary and the summary is
              #   still usable.
              #
              #   @return [Boolean]
              required :is_stale, Telnyx::Internal::Type::Boolean

              # @!attribute profile_id
              #
              #   @return [String]
              required :profile_id, String

              # @!attribute generated_at
              #   When the summary was last generated. Null while none is ready.
              #
              #   @return [String, nil]
              optional :generated_at, String, nil?: true

              # @!attribute text
              #   The precomputed summary, ready to place in an assistant's context at the start
              #   of a session.
              #
              #   @return [String, nil]
              optional :text, String, nil?: true

              # @!method initialize(is_stale:, profile_id:, generated_at: nil, text: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse::Data}
              #   for more details.
              #
              #   @param is_stale [Boolean] Whether newer memories have arrived since the summary was generated. The summary
              #
              #   @param profile_id [String]
              #
              #   @param generated_at [String, nil] When the summary was last generated. Null while none is ready.
              #
              #   @param text [String, nil] The precomputed summary, ready to place in an assistant's context at the start o
            end
          end
        end
      end
    end
  end
end
