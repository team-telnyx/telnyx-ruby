# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        # @see Telnyx::Resources::AI::Missions::Runs#update
        class RunUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute mission_id
          #
          #   @return [String]
          required :mission_id, String

          # @!attribute run_id
          #
          #   @return [String]
          required :run_id, String

          # @!attribute error
          #
          #   @return [String, nil]
          optional :error, String

          # @!attribute metadata
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute result_payload
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :result_payload, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute result_summary
          #
          #   @return [String, nil]
          optional :result_summary, String

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::AI::Missions::RunStatus, nil]
          optional :status, enum: -> { Telnyx::AI::Missions::RunStatus }

          # @!method initialize(mission_id:, run_id:, error: nil, metadata: nil, result_payload: nil, result_summary: nil, status: nil, request_options: {})
          #   @param mission_id [String]
          #   @param run_id [String]
          #   @param error [String]
          #   @param metadata [Hash{Symbol=>Object}]
          #   @param result_payload [Hash{Symbol=>Object}]
          #   @param result_summary [String]
          #   @param status [Symbol, Telnyx::Models::AI::Missions::RunStatus]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
