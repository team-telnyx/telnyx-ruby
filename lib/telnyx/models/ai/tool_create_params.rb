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

        # @!attribute webhook
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :webhook, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!method initialize(display_name:, type:, function: nil, handoff: nil, invite: nil, retrieval: nil, timeout_ms: nil, webhook: nil, request_options: {})
        #   @param display_name [String]
        #   @param type [String]
        #   @param function [Hash{Symbol=>Object}]
        #   @param handoff [Hash{Symbol=>Object}]
        #   @param invite [Hash{Symbol=>Object}]
        #   @param retrieval [Hash{Symbol=>Object}]
        #   @param timeout_ms [Integer]
        #   @param webhook [Hash{Symbol=>Object}]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
