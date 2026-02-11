# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        # @see Telnyx::Resources::AI::Missions::Runs#create
        class RunCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute input
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :input, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute metadata
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!method initialize(input: nil, metadata: nil, request_options: {})
          #   @param input [Hash{Symbol=>Object}]
          #   @param metadata [Hash{Symbol=>Object}]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
