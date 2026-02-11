# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::TelnyxAgents#link
          class TelnyxAgentLinkParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute mission_id
            #
            #   @return [String]
            required :mission_id, String

            # @!attribute telnyx_agent_id
            #   The Telnyx AI agent ID to link
            #
            #   @return [String]
            required :telnyx_agent_id, String

            # @!method initialize(mission_id:, telnyx_agent_id:, request_options: {})
            #   @param mission_id [String]
            #
            #   @param telnyx_agent_id [String] The Telnyx AI agent ID to link
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
