# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class NamespaceSettings < Telnyx::Internal::Type::BaseModel
            # @!attribute summary
            #   Settings that shape this namespace's summaries.
            #
            #   @return [Telnyx::Models::AI::Memory::Namespaces::SummarySettings, nil]
            optional :summary, -> { Telnyx::AI::Memory::Namespaces::SummarySettings }

            # @!method initialize(summary: nil)
            #   A namespace's settings, grouped by what they affect.
            #
            #   @param summary [Telnyx::Models::AI::Memory::Namespaces::SummarySettings] Settings that shape this namespace's summaries.
          end
        end

        NamespaceSettings = Namespaces::NamespaceSettings
      end
    end
  end
end
