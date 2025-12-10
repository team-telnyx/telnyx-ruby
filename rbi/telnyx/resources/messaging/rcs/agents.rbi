# typed: strong

module Telnyx
  module Resources
    class Messaging
      class Rcs
        class Agents
          # Retrieve an RCS agent
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::RcsAgentResponse)
          end
          def retrieve(
            # RCS agent ID
            id,
            request_options: {}
          )
          end

          # Modify an RCS agent
          sig do
            params(
              id: String,
              profile_id: T.nilable(String),
              webhook_failover_url: T.nilable(String),
              webhook_url: T.nilable(String),
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::RcsAgentResponse)
          end
          def update(
            # RCS agent ID
            id,
            # Messaging profile ID associated with the RCS Agent
            profile_id: nil,
            # Failover URL to receive RCS events
            webhook_failover_url: nil,
            # URL to receive RCS events
            webhook_url: nil,
            request_options: {}
          )
          end

          # List all RCS agents
          sig do
            params(
              page: Telnyx::Messaging::Rcs::AgentListParams::Page::OrHash,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Internal::DefaultPagination[Telnyx::RcsAgent])
          end
          def list(
            # Consolidated page parameter (deepObject style). Originally: page[number],
            # page[size]
            page: nil,
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
