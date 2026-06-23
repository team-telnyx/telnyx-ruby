# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class CreatePlanStepRequest < Telnyx::Internal::Type::BaseModel
            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute sequence
            #
            #   @return [Integer]
            required :sequence, Integer

            # @!attribute step_id
            #
            #   @return [String]
            required :step_id, String

            # @!attribute metadata
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute parent_step_id
            #
            #   @return [String, nil]
            optional :parent_step_id, String

            # @!method initialize(description:, sequence:, step_id:, metadata: nil, parent_step_id: nil)
            #   @param description [String]
            #   @param sequence [Integer]
            #   @param step_id [String]
            #   @param metadata [Hash{Symbol=>Object}]
            #   @param parent_step_id [String]
          end
        end
      end
    end
  end
end
