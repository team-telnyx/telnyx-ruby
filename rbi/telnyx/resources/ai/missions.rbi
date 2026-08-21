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

        # Creates a new mission definition from the provided configuration and returns the
        # created mission. Execute the mission by starting runs against it.
        sig do
          params(
            name: String,
            description: String,
            execution_mode: Telnyx::AI::ExecutionMode::OrSymbol,
            instructions: String,
            metadata: T::Hash[Symbol, T.anything],
            model: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::MissionResponse)
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
          ).returns(Telnyx::AI::MissionResponse)
        end
        def retrieve(
          # Unique identifier of the mission.
          mission_id,
          request_options: {}
        )
        end

        # Returns a paginated list of all mission definitions in your organization.
        # Missions describe a goal and the tools, knowledge bases, and MCP servers agents
        # may use to accomplish it.
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

        # Creates a copy of the specified mission as a new mission definition, so you can
        # iterate on its configuration without modifying the original.
        sig do
          params(
            mission_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def clone_mission(
          # Unique identifier of the mission.
          mission_id,
          request_options: {}
        )
        end

        # Permanently deletes the specified mission definition and returns no content on
        # success.
        sig do
          params(
            mission_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete_mission(
          # Unique identifier of the mission.
          mission_id,
          request_options: {}
        )
        end

        # Returns a paginated list of recent events across every mission in your
        # organization, optionally filtered by event type. Useful for building activity
        # feeds or monitoring dashboards.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            type: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::AI::Missions::Runs::EventData
            ]
          )
        end
        def list_events(
          # Page number (1-based)
          page_number: nil,
          # Number of items per page
          page_size: nil,
          # Filter results by type.
          type: nil,
          request_options: {}
        )
        end

        # Replaces the specified mission's definition with the provided configuration and
        # returns the updated mission.
        sig do
          params(
            mission_id: String,
            description: String,
            execution_mode: Telnyx::AI::ExecutionMode::OrSymbol,
            instructions: String,
            metadata: T::Hash[Symbol, T.anything],
            model: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::MissionResponse)
        end
        def update_mission(
          # Unique identifier of the mission.
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
