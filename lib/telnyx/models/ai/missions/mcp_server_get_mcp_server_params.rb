# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        # @see Telnyx::Resources::AI::Missions::McpServers#get_mcp_server
        class McpServerGetMcpServerParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute mission_id
          #
          #   @return [String]
          required :mission_id, String

          # @!method initialize(mission_id:, request_options: {})
          #   @param mission_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
