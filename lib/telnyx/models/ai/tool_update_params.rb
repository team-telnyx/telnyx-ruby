# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Tools#update
      class ToolUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute tool_id
        #
        #   @return [String]
        required :tool_id, String

        # @!attribute display_name
        #
        #   @return [String, nil]
        optional :display_name, String

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

        # @!attribute retrieval
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :retrieval, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute timeout_ms
        #
        #   @return [Integer, nil]
        optional :timeout_ms, Integer

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute webhook
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :webhook, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!method initialize(tool_id:, display_name: nil, function: nil, handoff: nil, invite: nil, retrieval: nil, timeout_ms: nil, type: nil, webhook: nil, request_options: {})
        #   @param tool_id [String]
        #   @param display_name [String]
        #   @param function [Hash{Symbol=>Object}]
        #   @param handoff [Hash{Symbol=>Object}]
        #   @param invite [Hash{Symbol=>Object}]
        #   @param retrieval [Hash{Symbol=>Object}]
        #   @param timeout_ms [Integer]
        #   @param type [String]
        #   @param webhook [Hash{Symbol=>Object}]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
