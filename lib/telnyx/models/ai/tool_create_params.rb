# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Tools#create
      class ToolCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute display_name
        #
        #   @return [String]
        required :display_name, String

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute client_side_tool
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :client_side_tool, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute function
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :function, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute handoff
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :handoff, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute invite
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :invite, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute pay
        #
        #   @return [Telnyx::Models::AI::PayToolParams, nil]
        optional :pay, -> { Telnyx::AI::PayToolParams }

        # @!attribute retrieval
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :retrieval, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute timeout_ms
        #
        #   @return [Integer, nil]
        optional :timeout_ms, Integer

        # @!attribute update_dynamic_variables
        #   Configuration for an update_dynamic_variables tool.
        #
        #   @return [Telnyx::Models::AI::UpdateDynamicVariablesToolParams, nil]
        optional :update_dynamic_variables, -> { Telnyx::AI::UpdateDynamicVariablesToolParams }

        # @!attribute webhook
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :webhook, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!method initialize(display_name:, type:, client_side_tool: nil, function: nil, handoff: nil, invite: nil, pay: nil, retrieval: nil, timeout_ms: nil, update_dynamic_variables: nil, webhook: nil, request_options: {})
        #   @param display_name [String]
        #
        #   @param type [String]
        #
        #   @param client_side_tool [Hash{Symbol=>Object}]
        #
        #   @param function [Hash{Symbol=>Object}]
        #
        #   @param handoff [Hash{Symbol=>Object}]
        #
        #   @param invite [Hash{Symbol=>Object}]
        #
        #   @param pay [Telnyx::Models::AI::PayToolParams]
        #
        #   @param retrieval [Hash{Symbol=>Object}]
        #
        #   @param timeout_ms [Integer]
        #
        #   @param update_dynamic_variables [Telnyx::Models::AI::UpdateDynamicVariablesToolParams] Configuration for an update_dynamic_variables tool.
        #
        #   @param webhook [Hash{Symbol=>Object}]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
