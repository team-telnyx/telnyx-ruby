# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Versions#retrieve
        class VersionRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute assistant_id
          #
          #   @return [String]
          required :assistant_id, String

          # @!attribute version_id
          #
          #   @return [String]
          required :version_id, String

          # @!attribute include_mcp_servers
          #   Whether to include MCP servers in the response.
          #
          #   @return [Boolean, nil]
          optional :include_mcp_servers, Telnyx::Internal::Type::Boolean

          # @!method initialize(assistant_id:, version_id:, include_mcp_servers: nil, request_options: {})
          #   @param assistant_id [String]
          #
          #   @param version_id [String]
          #
          #   @param include_mcp_servers [Boolean] Whether to include MCP servers in the response.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
