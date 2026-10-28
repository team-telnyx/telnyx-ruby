# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioRetrieveExportScenariosParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # File format of the export.
              sig do
                returns(
                  Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType::OrSymbol
                )
              end
              attr_accessor :export_type

              # Comma-separated scenario IDs to export.
              sig { returns(String) }
              attr_accessor :scenario_ids

              # Export scenarios belonging to the specified test agent.
              sig { returns(T.nilable(Integer)) }
              attr_reader :agent_id

              sig { params(agent_id: Integer).void }
              attr_writer :agent_id

              sig do
                params(
                  export_type:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType::OrSymbol,
                  scenario_ids: String,
                  agent_id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # File format of the export.
                export_type:,
                # Comma-separated scenario IDs to export.
                scenario_ids:,
                # Export scenarios belonging to the specified test agent.
                agent_id: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    export_type:
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType::OrSymbol,
                    scenario_ids: String,
                    agent_id: Integer,
                    request_options: Telnyx::RequestOptions
                  }
                )
              end
              def to_hash
              end

              # File format of the export.
              module ExportType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CSV =
                  T.let(
                    :csv,
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType::TaggedSymbol
                  )
                XLSX =
                  T.let(
                    :xlsx,
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end
      end
    end
  end
end
