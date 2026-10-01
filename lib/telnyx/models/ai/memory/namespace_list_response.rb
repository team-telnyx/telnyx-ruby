# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        # @see Telnyx::Resources::AI::Memory::Namespaces#list
        class NamespaceListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::AI::Memory::Namespace>]
          required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Memory::Namespace] }

          # @!method initialize(data:)
          #   @param data [Array<Telnyx::Models::AI::Memory::Namespace>]
        end
      end
    end
  end
end
