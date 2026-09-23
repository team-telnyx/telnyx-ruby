# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module OpenAI
        class FunctionDefinition < Telnyx::Internal::Type::BaseModel
          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute parameters
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :parameters, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!method initialize(name:, description: nil, parameters: nil)
          #   @param name [String]
          #   @param description [String]
          #   @param parameters [Hash{Symbol=>Object}]
        end
      end
    end
  end
end
