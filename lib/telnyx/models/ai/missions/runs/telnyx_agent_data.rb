# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class TelnyxAgentData < Telnyx::Internal::Type::BaseModel
            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute run_id
            #
            #   @return [String]
            required :run_id, String

            # @!attribute telnyx_agent_id
            #
            #   @return [String]
            required :telnyx_agent_id, String

            # @!method initialize(created_at:, run_id:, telnyx_agent_id:)
            #   @param created_at [Time]
            #   @param run_id [String]
            #   @param telnyx_agent_id [String]
          end
        end
      end
    end
  end
end
