# typed: strong

module Telnyx
  module Resources
    class AgentGateways
      # REST APIs on an instance, served to agents as tools.
      sig { returns(Telnyx::Resources::AgentGateways::APIs) }
      attr_reader :apis

      # Checks an instance runs on model and tool requests.
      sig { returns(Telnyx::Resources::AgentGateways::Guardrails) }
      attr_reader :guardrails

      # Keys on an instance.
      sig { returns(Telnyx::Resources::AgentGateways::Keys) }
      attr_reader :keys

      # MCP servers on an instance, served to agents at one MCP endpoint.
      sig { returns(Telnyx::Resources::AgentGateways::McpServers) }
      attr_reader :mcp_servers

      # Named sets of guardrails an instance applies to requests.
      sig { returns(Telnyx::Resources::AgentGateways::Policies) }
      attr_reader :policies

      # Where an instance applies each policy.
      sig { returns(Telnyx::Resources::AgentGateways::PolicyAttachments) }
      attr_reader :policy_attachments

      # Teams on an instance: shared model lists, budgets, and rate limits.
      sig { returns(Telnyx::Resources::AgentGateways::Teams) }
      attr_reader :teams

      # Creates an Agent Gateway instance on one of the account's WireGuard Interfaces.
      # The instance starts `pending`, moves to `provisioning`, and then to `ready` or
      # `failed`. It joins the WireGuard Interface as a peer named `agw-<instance id>`,
      # and its `gateway_url` is set when it is `ready`.
      sig do
        params(
          wireguard_interface_id: String,
          name: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AgentGatewayResponse)
      end
      def create(
        # One of the account's WireGuard Interfaces. The instance joins it as a peer, and
        # the interface's other peers reach the instance.
        wireguard_interface_id:,
        # A label for people.
        name: nil,
        request_options: {}
      )
      end

      # Returns one of the account's Agent Gateway instances.
      sig do
        params(
          instance_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AgentGatewayResponse)
      end
      def retrieve(
        # The Agent Gateway's `id`.
        instance_id,
        request_options: {}
      )
      end

      # Lists the account's Agent Gateway instances, newest first, one page at a time.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::AgentGateway])
      end
      def list(
        # The page to return, counting from 1.
        page_number: nil,
        # Results per page.
        page_size: nil,
        request_options: {}
      )
      end

      # Deletes an Agent Gateway instance in any status. The response shows it
      # `deleting`; repeating the request answers the same until the instance is gone,
      # and then `404`. The instance's engine and everything stored on it are removed.
      sig do
        params(
          instance_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AgentGatewayResponse)
      end
      def delete(
        # The Agent Gateway's `id`.
        instance_id,
        request_options: {}
      )
      end

      # Lists the models the instance serves. Each has the name a request uses, the
      # Telnyx Inference model behind it, and its price per million tokens.
      sig do
        params(
          instance_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AgentGatewayRetrieveModelsResponse)
      end
      def retrieve_models(
        # The Agent Gateway's `id`.
        instance_id,
        request_options: {}
      )
      end

      # Lists the requests the instance served with its keys, newest first, one page at
      # a time. The window defaults to the last 24 hours and spans at most 31 days. A
      # row appears a few seconds after its request. The instance must be `ready`;
      # otherwise the request answers `409`.
      sig do
        params(
          instance_id: String,
          end_: Time,
          key_id: String,
          page_number: Integer,
          page_size: Integer,
          start: Time,
          team_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse)
      end
      def retrieve_spend_logs(
        # The Agent Gateway's `id`.
        instance_id,
        # The window's end, an RFC 3339 timestamp with an offset. Defaults to now.
        end_: nil,
        # Only the requests made with this key.
        key_id: nil,
        # The page to return, counting from 1.
        page_number: nil,
        # Results per page.
        page_size: nil,
        # The window's start, an RFC 3339 timestamp with an offset. Defaults to 24 hours
        # before `end`.
        start: nil,
        # Only the requests made with this team's keys.
        team_id: nil,
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
