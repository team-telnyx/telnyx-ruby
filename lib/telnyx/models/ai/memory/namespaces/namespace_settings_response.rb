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
            #   @return [Telnyx::Models::AI::Memory::Namespaces::NamespaceSettings]
            required :data, -> { Telnyx::AI::Memory::Namespaces::NamespaceSettings }

            # @!method initialize(data:)
            #   @param data [Telnyx::Models::AI::Memory::Namespaces::NamespaceSettings] A namespace's settings, grouped by what they affect.
          end
        end

        NamespaceSettingsResponse = Namespaces::NamespaceSettingsResponse
      end
    end
  end
end
