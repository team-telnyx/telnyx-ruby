# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class EventListParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Missions::Runs::EventListParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :mission_id

            sig { returns(String) }
            attr_accessor :run_id

            # Filter results by agent id.
            sig { returns(T.nilable(String)) }
            attr_reader :agent_id

            sig { params(agent_id: String).void }
            attr_writer :agent_id

            # Page number (1-based)
            sig { returns(T.nilable(Integer)) }
            attr_reader :page_number

            sig { params(page_number: Integer).void }
            attr_writer :page_number

            # Number of items per page
            sig { returns(T.nilable(Integer)) }
            attr_reader :page_size

            sig { params(page_size: Integer).void }
            attr_writer :page_size

            # Filter results by step id.
            sig { returns(T.nilable(String)) }
            attr_reader :step_id

            sig { params(step_id: String).void }
            attr_writer :step_id

            # Filter results by type.
            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              params(
                mission_id: String,
                run_id: String,
                agent_id: String,
                page_number: Integer,
                page_size: Integer,
                step_id: String,
                type: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              mission_id:,
              run_id:,
              # Filter results by agent id.
              agent_id: nil,
              # Page number (1-based)
              page_number: nil,
              # Number of items per page
              page_size: nil,
              # Filter results by step id.
              step_id: nil,
              # Filter results by type.
              type: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  mission_id: String,
                  run_id: String,
                  agent_id: String,
                  page_number: Integer,
                  page_size: Integer,
                  step_id: String,
                  type: String,
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
