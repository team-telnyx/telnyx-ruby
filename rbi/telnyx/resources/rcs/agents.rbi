# typed: strong

module Telnyx
  module Resources
    class Rcs
      # Manage RCS agent registration, testing, verification, and launch.
      class Agents
        # Manage RCS agent registration, testing, verification, and launch.
        sig { returns(Telnyx::Resources::Rcs::Agents::TestDevices) }
        attr_reader :test_devices

        # Creates an editable RCS agent draft under a brand. The `Idempotency-Key` is
        # scoped to the authenticated organization. Reusing the key with the same request
        # returns the original agent, while reusing it with a different request returns a
        # conflict.
        sig do
          params(
            brand_id: String,
            configuration: Telnyx::Rcs::AgentConfiguration::OrHash,
            display_name: String,
            use_case: Telnyx::Rcs::AgentUseCase::OrSymbol,
            idempotency_key: String,
            hosting_region: T.nilable(String),
            profile_id: T.nilable(String),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Rcs::AgentResponse)
        end
        def create(
          # Body param
          brand_id:,
          # Body param
          configuration:,
          # Body param
          display_name:,
          # Body param
          use_case:,
          # Header param: A caller-generated key containing letters, numbers, underscores,
          # or hyphens. Reuse the same key and request body when retrying the same logical
          # agent creation.
          idempotency_key:,
          # Body param
          hosting_region: nil,
          # Body param: A Messaging Profile owned by the authenticated organization. When
          # omitted, the agent inherits the brand profile.
          profile_id: nil,
          request_options: {}
        )
        end

        # Retrieves an RCS agent, section statuses, test devices, carrier approvals, and
        # provider capabilities.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Rcs::AgentResponse)
        end
        def retrieve(
          # The Telnyx-assigned agent identifier.
          id,
          request_options: {}
        )
        end

        # Updates one or more fields on an agent while its status is `CREATED`. Submitted
        # agents cannot be changed through this endpoint.
        sig do
          params(
            id: String,
            configuration: Telnyx::Rcs::AgentConfiguration::OrHash,
            display_name: String,
            hosting_region: String,
            profile_id: String,
            use_case: Telnyx::Rcs::AgentUseCase::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Rcs::AgentResponse)
        end
        def update(
          # The Telnyx-assigned agent identifier.
          id,
          configuration: nil,
          display_name: nil,
          hosting_region: nil,
          profile_id: nil,
          use_case: nil,
          request_options: {}
        )
        end

        # Lists RCS agents owned by the authenticated organization, optionally filtered by
        # brand.
        sig do
          params(
            brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T::Array[Telnyx::Rcs::AgentResponse])
        end
        def list(
          # Only return agents belonging to this brand.
          brand_id: nil,
          request_options: {}
        )
        end

        # Adds the campaign and testing configuration, then starts asynchronous carrier
        # launch. Agent basics must already be submitted. Repeating a launch that is
        # already in progress returns the current agent without creating new work.
        sig do
          params(
            id: String,
            campaign: Telnyx::Rcs::AgentLaunchParams::Campaign::OrHash,
            testing: Telnyx::Rcs::AgentTestingConfiguration::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Rcs::AgentResponse)
        end
        def launch(
          # The Telnyx-assigned agent identifier.
          id,
          campaign:,
          testing:,
          request_options: {}
        )
        end

        # Lists carrier approval records for an RCS agent. The provider may expose
        # per-carrier, hub-level, or bot-level approval status.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T::Array[Telnyx::Rcs::CarrierApprovalResponse])
        end
        def retrieve_carrier_approvals(
          # The Telnyx-assigned agent identifier.
          id,
          request_options: {}
        )
        end

        # Starts asynchronous provider provisioning and submits the agent's basic
        # configuration. The brand must be `VERIFIED`. Repeating this request for an
        # in-progress agent returns its current state without creating new work.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Rcs::AgentResponse)
        end
        def submit(
          # The Telnyx-assigned agent identifier.
          id,
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
