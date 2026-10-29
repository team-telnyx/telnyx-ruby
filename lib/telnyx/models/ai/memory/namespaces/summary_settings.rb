# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class SummarySettings < Telnyx::Internal::Type::BaseModel
            # @!attribute instructions
            #   Free-form instructions that influence how this namespace's summaries are
            #   written, shared by every profile in the namespace. How you use them is up to you
            #   -- they steer the outcome, so try a phrasing and see how the summary comes out.
            #   Advisory: they steer the summary but never override or deny a profile's own
            #   facts, and they do not affect recall. Null or empty means none are set, and
            #   summaries use the neutral default. A change reaches each summary the next time
            #   it is regenerated.
            #
            #   @return [String, nil]
            optional :instructions, String, nil?: true

            # @!method initialize(instructions: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Memory::Namespaces::SummarySettings} for more details.
            #
            #   A namespace's summary settings, shared by every profile in it.
            #
            #   @param instructions [String, nil] Free-form instructions that influence how this namespace's summaries are written
          end
        end
      end
    end
  end
end
