# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Missions#create
      class MissionCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute execution_mode
        #
        #   @return [Symbol, Telnyx::Models::AI::MissionCreateParams::ExecutionMode, nil]
        optional :execution_mode, enum: -> { Telnyx::AI::MissionCreateParams::ExecutionMode }

        # @!attribute instructions
        #
        #   @return [String, nil]
        optional :instructions, String

        # @!attribute metadata
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute model
        #
        #   @return [String, nil]
        optional :model, String

        # @!method initialize(name:, description: nil, execution_mode: nil, instructions: nil, metadata: nil, model: nil, request_options: {})
        #   @param name [String]
        #   @param description [String]
        #   @param execution_mode [Symbol, Telnyx::Models::AI::MissionCreateParams::ExecutionMode]
        #   @param instructions [String]
        #   @param metadata [Hash{Symbol=>Object}]
        #   @param model [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module ExecutionMode
          extend Telnyx::Internal::Type::Enum

          EXTERNAL = :external
          MANAGED = :managed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
