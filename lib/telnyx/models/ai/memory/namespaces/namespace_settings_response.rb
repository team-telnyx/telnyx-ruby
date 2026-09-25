# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Settings#list
          class NamespaceSettingsResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #   A namespace's settings, grouped by what they affect.
            #
            #   @return [Telnyx::Models::AI::Memory::Namespaces::NamespaceSettingsResponse::Data]
            required :data, -> { Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data }

            # @!method initialize(data:)
            #   @param data [Telnyx::Models::AI::Memory::Namespaces::NamespaceSettingsResponse::Data] A namespace's settings, grouped by what they affect.

            # @see Telnyx::Models::AI::Memory::Namespaces::NamespaceSettingsResponse#data
            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute summary
              #   Settings that shape this namespace's summaries.
              #
              #   @return [Telnyx::Models::AI::Memory::Namespaces::NamespaceSettingsResponse::Data::Summary, nil]
              optional :summary, -> { Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data::Summary }

              # @!method initialize(summary: nil)
              #   A namespace's settings, grouped by what they affect.
              #
              #   @param summary [Telnyx::Models::AI::Memory::Namespaces::NamespaceSettingsResponse::Data::Summary] Settings that shape this namespace's summaries.

              # @see Telnyx::Models::AI::Memory::Namespaces::NamespaceSettingsResponse::Data#summary
              class Summary < Telnyx::Internal::Type::BaseModel
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
                #   {Telnyx::Models::AI::Memory::Namespaces::NamespaceSettingsResponse::Data::Summary}
                #   for more details.
                #
                #   Settings that shape this namespace's summaries.
                #
                #   @param instructions [String, nil] Free-form instructions that influence how this namespace's summaries are written
              end
            end
          end
        end

        NamespaceSettingsResponse = Namespaces::NamespaceSettingsResponse
      end
    end
  end
end
