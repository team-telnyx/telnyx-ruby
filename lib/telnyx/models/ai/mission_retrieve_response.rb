# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Missions#retrieve
      class MissionRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AI::MissionRetrieveResponse::Data]
        required :data, -> { Telnyx::Models::AI::MissionRetrieveResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AI::MissionRetrieveResponse::Data]

        # @see Telnyx::Models::AI::MissionRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute execution_mode
          #
          #   @return [Symbol, Telnyx::Models::AI::MissionRetrieveResponse::Data::ExecutionMode]
          required :execution_mode, enum: -> { Telnyx::Models::AI::MissionRetrieveResponse::Data::ExecutionMode }

          # @!attribute mission_id
          #
          #   @return [String]
          required :mission_id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

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

          # @!method initialize(created_at:, execution_mode:, mission_id:, name:, updated_at:, description: nil, instructions: nil, metadata: nil, model: nil)
          #   @param created_at [Time]
          #   @param execution_mode [Symbol, Telnyx::Models::AI::MissionRetrieveResponse::Data::ExecutionMode]
          #   @param mission_id [String]
          #   @param name [String]
          #   @param updated_at [Time]
          #   @param description [String]
          #   @param instructions [String]
          #   @param metadata [Hash{Symbol=>Object}]
          #   @param model [String]

          # @see Telnyx::Models::AI::MissionRetrieveResponse::Data#execution_mode
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
end
