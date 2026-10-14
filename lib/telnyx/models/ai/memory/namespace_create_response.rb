# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        # @see Telnyx::Resources::AI::Memory::Namespaces#create
        class NamespaceCreateResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #   An isolated memory store within your organization.
          #
          #   @return [Telnyx::Models::AI::Memory::Namespace]
          required :data, -> { Telnyx::AI::Memory::Namespace }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::AI::Memory::Namespace] An isolated memory store within your organization.
        end
      end
    end
  end
end
