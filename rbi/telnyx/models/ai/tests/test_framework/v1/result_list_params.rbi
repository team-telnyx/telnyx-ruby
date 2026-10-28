# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ResultListParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::ResultListParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Filter results belonging to the specified test agent.
              sig { returns(T.nilable(Integer)) }
              attr_reader :agent_id

              sig { params(agent_id: Integer).void }
              attr_writer :agent_id

              # Page number (1-based).
              sig { returns(T.nilable(Integer)) }
              attr_reader :page

              sig { params(page: Integer).void }
              attr_writer :page

              # Number of results per page.
              sig { returns(T.nilable(Integer)) }
              attr_reader :page_size

              sig { params(page_size: Integer).void }
              attr_writer :page_size

              # Filter results by a comma-separated list of scenario IDs.
              sig { returns(T.nilable(String)) }
              attr_reader :scenarios

              sig { params(scenarios: String).void }
              attr_writer :scenarios

              # Filter results by a search string.
              sig { returns(T.nilable(String)) }
              attr_reader :search

              sig { params(search: String).void }
              attr_writer :search

              sig do
                params(
                  agent_id: Integer,
                  page: Integer,
                  page_size: Integer,
                  scenarios: String,
                  search: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Filter results belonging to the specified test agent.
                agent_id: nil,
                # Page number (1-based).
                page: nil,
                # Number of results per page.
                page_size: nil,
                # Filter results by a comma-separated list of scenario IDs.
                scenarios: nil,
                # Filter results by a search string.
                search: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    agent_id: Integer,
                    page: Integer,
                    page_size: Integer,
                    scenarios: String,
                    search: String,
                    request_options: Telnyx::RequestOptions
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
