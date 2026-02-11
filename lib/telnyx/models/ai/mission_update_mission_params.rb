# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Missions#update_mission
      class MissionUpdateMissionParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute execution_mode
        #
        #   @return [Symbol, Telnyx::Models::AI::MissionUpdateMissionParams::ExecutionMode, nil]
        optional :execution_mode, enum: -> { Telnyx::AI::MissionUpdateMissionParams::ExecutionMode }

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

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(description: nil, execution_mode: nil, instructions: nil, metadata: nil, model: nil, name: nil, request_options: {})
        #   @param description [String]
        #   @param execution_mode [Symbol, Telnyx::Models::AI::MissionUpdateMissionParams::ExecutionMode]
        #   @param instructions [String]
        #   @param metadata [Hash{Symbol=>Object}]
        #   @param model [String]
        #   @param name [String]
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
