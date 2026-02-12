# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        sig { returns(Telnyx::Resources::AI::Missions::Runs) }
        attr_reader :runs

        sig { returns(Telnyx::Resources::AI::Missions::KnowledgeBases) }
        attr_reader :knowledge_bases

        sig { returns(Telnyx::Resources::AI::Missions::McpServers) }
        attr_reader :mcp_servers

        sig { returns(Telnyx::Resources::AI::Missions::Tools) }
        attr_reader :tools

        # Create a new mission definition
        sig do
          params(
            name: String,
            description: String,
            execution_mode:
              Telnyx::AI::MissionCreateParams::ExecutionMode::OrSymbol,
            instructions: String,
            metadata: T::Hash[Symbol, T.anything],
            model: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::MissionCreateResponse)
        end
        def create(
          name:,
          description: nil,
          execution_mode: nil,
          instructions: nil,
          metadata: nil,
          model: nil,
          request_options: {}
        )
        end

        # Get a mission by ID (includes tools, knowledge_bases, mcp_servers)
        sig do
          params(
            mission_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::MissionRetrieveResponse)
        end
        def retrieve(mission_id, request_options: {})
        end

        # List all missions for the organization
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[Telnyx::AI::MissionData]
          )
        end
        def list(
          # Page number (1-based)
          page_number: nil,
          # Number of items per page
          page_size: nil,
          request_options: {}
        )
        end

        # Clone an existing mission
        sig do
          params(
            mission_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def clone_mission(mission_id, request_options: {})
        end

        # Delete a mission
        sig do
          params(
            mission_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete_mission(mission_id, request_options: {})
        end

        # List recent events across all missions
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            type: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::AI::MissionListEventsResponse
            ]
          )
        end
        def list_events(
          # Page number (1-based)
          page_number: nil,
          # Number of items per page
          page_size: nil,
          type: nil,
          request_options: {}
        )
        end

        # Update a mission definition
        sig do
          params(
            mission_id: String,
            description: String,
            execution_mode:
              Telnyx::AI::MissionUpdateMissionParams::ExecutionMode::OrSymbol,
            instructions: String,
            metadata: T::Hash[Symbol, T.anything],
            model: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::MissionUpdateMissionResponse)
        end
        def update_mission(
          mission_id,
          description: nil,
          execution_mode: nil,
          instructions: nil,
          metadata: nil,
          model: nil,
          name: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
