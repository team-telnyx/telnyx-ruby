# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        class Runs
          class TelnyxAgents
            # List all Telnyx agents linked to a run
            sig do
              params(
                run_id: String,
                mission_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::AI::Missions::Runs::TelnyxAgentListResponse
              )
            end
            def list(run_id, mission_id:, request_options: {})
            end

            # Link a Telnyx AI agent (voice/messaging) to a run
            sig do
              params(
                run_id: String,
                mission_id: String,
                telnyx_agent_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse
              )
            end
            def link(
              # Path param
              run_id,
              # Path param
              mission_id:,
              # Body param: The Telnyx AI agent ID to link
              telnyx_agent_id:,
              request_options: {}
            )
            end

            # Unlink a Telnyx agent from a run
            sig do
              params(
                telnyx_agent_id: String,
                mission_id: String,
                run_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).void
            end
            def unlink(
              telnyx_agent_id,
              mission_id:,
              run_id:,
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
  end
end
