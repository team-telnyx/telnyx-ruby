# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioListParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioListParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Filter scenarios belonging to the specified test agent.
              sig { returns(T.nilable(Integer)) }
              attr_reader :agent_id

              sig { params(agent_id: Integer).void }
              attr_writer :agent_id

              # Filter scenarios belonging to the specified Telnyx assistant.
              sig { returns(T.nilable(String)) }
              attr_reader :assistant_id

              sig { params(assistant_id: String).void }
              attr_writer :assistant_id

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

              # Filter scenarios by a comma-separated list of tags.
              sig { returns(T.nilable(String)) }
              attr_reader :tags

              sig { params(tags: String).void }
              attr_writer :tags

              sig do
                params(
                  agent_id: Integer,
                  assistant_id: String,
                  page: Integer,
                  page_size: Integer,
                  tags: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Filter scenarios belonging to the specified test agent.
                agent_id: nil,
                # Filter scenarios belonging to the specified Telnyx assistant.
                assistant_id: nil,
                # Page number (1-based).
                page: nil,
                # Number of results per page.
                page_size: nil,
                # Filter scenarios by a comma-separated list of tags.
                tags: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    agent_id: Integer,
                    assistant_id: String,
                    page: Integer,
                    page_size: Integer,
                    tags: String,
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
