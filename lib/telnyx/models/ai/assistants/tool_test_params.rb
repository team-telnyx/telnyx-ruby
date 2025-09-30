# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Tools#test_
        class ToolTestParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute assistant_id
          #
          #   @return [String]
          required :assistant_id, String

          # @!attribute arguments
          #   Key-value arguments to use for the webhook test
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :arguments, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute dynamic_variables
          #   Key-value dynamic variables to use for the webhook test
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :dynamic_variables, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!method initialize(assistant_id:, arguments: nil, dynamic_variables: nil, request_options: {})
          #   @param assistant_id [String]
          #
          #   @param arguments [Hash{Symbol=>Object}] Key-value arguments to use for the webhook test
          #
          #   @param dynamic_variables [Hash{Symbol=>Object}] Key-value dynamic variables to use for the webhook test
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
