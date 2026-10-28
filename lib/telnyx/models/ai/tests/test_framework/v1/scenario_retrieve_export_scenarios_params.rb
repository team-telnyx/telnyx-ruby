# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#retrieve_export_scenarios
            class ScenarioRetrieveExportScenariosParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute export_type
              #   File format of the export.
              #
              #   @return [Symbol, Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType]
              required :export_type,
                       enum: -> { Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType }

              # @!attribute scenario_ids
              #   Comma-separated scenario IDs to export.
              #
              #   @return [String]
              required :scenario_ids, String

              # @!attribute agent_id
              #   Export scenarios belonging to the specified test agent.
              #
              #   @return [Integer, nil]
              optional :agent_id, Integer

              # @!method initialize(export_type:, scenario_ids:, agent_id: nil, request_options: {})
              #   @param export_type [Symbol, Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType] File format of the export.
              #
              #   @param scenario_ids [String] Comma-separated scenario IDs to export.
              #
              #   @param agent_id [Integer] Export scenarios belonging to the specified test agent.
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

              # File format of the export.
              module ExportType
                extend Telnyx::Internal::Type::Enum

                CSV = :csv
                XLSX = :xlsx

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
