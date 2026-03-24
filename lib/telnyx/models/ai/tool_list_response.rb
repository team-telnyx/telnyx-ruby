# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Tools#list
      class ToolListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute tool_definition
        #
        #   @return [Hash{Symbol=>Object}]
        required :tool_definition, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute display_name
        #
        #   @return [String, nil]
        optional :display_name, String

        # @!attribute timeout_ms
        #
        #   @return [Integer, nil]
        optional :timeout_ms, Integer

        # @!method initialize(id:, tool_definition:, type:, created_at: nil, display_name: nil, timeout_ms: nil)
        #   @param id [String]
        #   @param tool_definition [Hash{Symbol=>Object}]
        #   @param type [String]
        #   @param created_at [String]
        #   @param display_name [String]
        #   @param timeout_ms [Integer]
      end
    end
  end
end
