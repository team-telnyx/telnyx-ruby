# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::McpServers#delete
      class McpServerDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute mcp_server_id
        #
        #   @return [String]
        required :mcp_server_id, String

        # @!method initialize(mcp_server_id:, request_options: {})
        #   @param mcp_server_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
