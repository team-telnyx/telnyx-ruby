# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Missions
        # @return [Telnyx::Resources::AI::Missions::Runs]
        attr_reader :runs

        # @return [Telnyx::Resources::AI::Missions::KnowledgeBases]
        attr_reader :knowledge_bases

        # @return [Telnyx::Resources::AI::Missions::McpServers]
        attr_reader :mcp_servers

        # @return [Telnyx::Resources::AI::Missions::Tools]
        attr_reader :tools

        # Creates a new mission definition from the provided configuration and returns the
        # created mission. Execute the mission by starting runs against it.
        #
        # @overload create(name:, description: nil, execution_mode: nil, instructions: nil, metadata: nil, model: nil, request_options: {})
        #
        # @param name [String]
        # @param description [String]
        # @param execution_mode [Symbol, Telnyx::Models::AI::ExecutionMode]
        # @param instructions [String]
        # @param metadata [Hash{Symbol=>Object}]
        # @param model [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::MissionResponse]
        #
        # @see Telnyx::Models::AI::MissionCreateParams
        def create(params)
          parsed, options = Telnyx::AI::MissionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/missions",
            body: parsed,
            model: Telnyx::AI::MissionResponse,
            options: options
          )
        end

        # Get a mission by ID (includes tools, knowledge_bases, mcp_servers)
        #
        # @overload retrieve(mission_id, request_options: {})
        #
        # @param mission_id [String] Unique identifier of the mission.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::MissionResponse]
        #
        # @see Telnyx::Models::AI::MissionRetrieveParams
        def retrieve(mission_id, params = {})
          @client.request(
            method: :get,
            path: ["ai/missions/%1$s", mission_id],
            model: Telnyx::AI::MissionResponse,
            options: params[:request_options]
          )
        end

        # Returns a paginated list of all mission definitions in your organization.
        # Missions describe a goal and the tools, knowledge bases, and MCP servers agents
        # may use to accomplish it.
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer] Page number (1-based)
        #
        # @param page_size [Integer] Number of items per page
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::MissionData>]
        #
        # @see Telnyx::Models::AI::MissionListParams
        def list(params = {})
          parsed, options = Telnyx::AI::MissionListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "ai/missions",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::AI::MissionData,
            options: options
          )
        end

        # Creates a copy of the specified mission as a new mission definition, so you can
        # iterate on its configuration without modifying the original.
        #
        # @overload clone_mission(mission_id, request_options: {})
        #
        # @param mission_id [String] Unique identifier of the mission.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Telnyx::Models::AI::MissionCloneMissionParams
        def clone_mission(mission_id, params = {})
          @client.request(
            method: :post,
            path: ["ai/missions/%1$s/clone", mission_id],
            model: Telnyx::Internal::Type::Unknown,
            options: params[:request_options]
          )
        end

        # Permanently deletes the specified mission definition and returns no content on
        # success.
        #
        # @overload delete_mission(mission_id, request_options: {})
        #
        # @param mission_id [String] Unique identifier of the mission.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::AI::MissionDeleteMissionParams
        def delete_mission(mission_id, params = {})
          @client.request(
            method: :delete,
            path: ["ai/missions/%1$s", mission_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Returns a paginated list of recent events across every mission in your
        # organization, optionally filtered by event type. Useful for building activity
        # feeds or monitoring dashboards.
        #
        # @overload list_events(page_number: nil, page_size: nil, type: nil, request_options: {})
        #
        # @param page_number [Integer] Page number (1-based)
        #
        # @param page_size [Integer] Number of items per page
        #
        # @param type [String] Filter results by type.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Missions::Runs::EventData>]
        #
        # @see Telnyx::Models::AI::MissionListEventsParams
        def list_events(params = {})
          parsed, options = Telnyx::AI::MissionListEventsParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "ai/missions/events",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::AI::Missions::Runs::EventData,
            options: options
          )
        end

        # Replaces the specified mission's definition with the provided configuration and
        # returns the updated mission.
        #
        # @overload update_mission(mission_id, description: nil, execution_mode: nil, instructions: nil, metadata: nil, model: nil, name: nil, request_options: {})
        #
        # @param mission_id [String] Unique identifier of the mission.
        #
        # @param description [String]
        #
        # @param execution_mode [Symbol, Telnyx::Models::AI::ExecutionMode]
        #
        # @param instructions [String]
        #
        # @param metadata [Hash{Symbol=>Object}]
        #
        # @param model [String]
        #
        # @param name [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::MissionResponse]
        #
        # @see Telnyx::Models::AI::MissionUpdateMissionParams
        def update_mission(mission_id, params = {})
          parsed, options = Telnyx::AI::MissionUpdateMissionParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["ai/missions/%1$s", mission_id],
            body: parsed,
            model: Telnyx::AI::MissionResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @runs = Telnyx::Resources::AI::Missions::Runs.new(client: client)
          @knowledge_bases = Telnyx::Resources::AI::Missions::KnowledgeBases.new(client: client)
          @mcp_servers = Telnyx::Resources::AI::Missions::McpServers.new(client: client)
          @tools = Telnyx::Resources::AI::Missions::Tools.new(client: client)
        end
      end
    end
  end
end
