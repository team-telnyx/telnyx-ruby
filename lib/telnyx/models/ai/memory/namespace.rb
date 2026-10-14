# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        class Namespace < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The namespace's unique identifier.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   The namespace's name, used in the path. `default` exists for every organization.
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Memory::Namespace} for more details.
          #
          #   An isolated memory store within your organization.
          #
          #   @param id [String] The namespace's unique identifier.
          #
          #   @param name [String] The namespace's name, used in the path. `default` exists for every organization.
        end
      end
    end
  end
end
