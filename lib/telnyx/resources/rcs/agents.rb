# frozen_string_literal: true

module Telnyx
  module Resources
    class Rcs
      # Manage RCS agent registration, testing, verification, and launch.
      class Agents
        # Manage RCS agent registration, testing, verification, and launch.
        # @return [Telnyx::Resources::Rcs::Agents::TestDevices]
        attr_reader :test_devices

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Rcs::AgentCreateParams} for more details.
        #
        # Creates an editable RCS agent draft under a brand. The `Idempotency-Key` is
        # scoped to the authenticated organization. Reusing the key with the same request
        # returns the original agent, while reusing it with a different request returns a
        # conflict.
        #
        # @overload create(brand_id:, configuration:, display_name:, use_case:, idempotency_key:, hosting_region: nil, profile_id: nil, request_options: {})
        #
        # @param brand_id [String] Body param
        #
        # @param configuration [Telnyx::Models::Rcs::AgentConfiguration] Body param
        #
        # @param display_name [String] Body param
        #
        # @param use_case [Symbol, Telnyx::Models::Rcs::AgentUseCase] Body param
        #
        # @param idempotency_key [String] Header param: A caller-generated key containing letters, numbers, underscores, o
        #
        # @param hosting_region [String, nil] Body param
        #
        # @param profile_id [String, nil] Body param: A Messaging Profile owned by the authenticated organization. When om
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rcs::AgentResponse]
        #
        # @see Telnyx::Models::Rcs::AgentCreateParams
        def create(params)
          parsed, options = Telnyx::Rcs::AgentCreateParams.dump_request(params)
          header_params = {idempotency_key: "idempotency-key"}
          @client.request(
            method: :post,
            path: "rcs/agents",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Telnyx::Rcs::AgentResponse,
            options: options
          )
        end

        # Retrieves an RCS agent, section statuses, test devices, carrier approvals, and
        # provider capabilities.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] The Telnyx-assigned agent identifier.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rcs::AgentResponse]
        #
        # @see Telnyx::Models::Rcs::AgentRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["rcs/agents/%1$s", id],
            model: Telnyx::Rcs::AgentResponse,
            options: params[:request_options]
          )
        end

        # Updates one or more fields on an agent while its status is `CREATED`. Submitted
        # agents cannot be changed through this endpoint.
        #
        # @overload update(id, configuration: nil, display_name: nil, hosting_region: nil, profile_id: nil, use_case: nil, request_options: {})
        #
        # @param id [String] The Telnyx-assigned agent identifier.
        #
        # @param configuration [Telnyx::Models::Rcs::AgentConfiguration]
        #
        # @param display_name [String]
        #
        # @param hosting_region [String]
        #
        # @param profile_id [String]
        #
        # @param use_case [Symbol, Telnyx::Models::Rcs::AgentUseCase]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rcs::AgentResponse]
        #
        # @see Telnyx::Models::Rcs::AgentUpdateParams
        def update(id, params = {})
          parsed, options = Telnyx::Rcs::AgentUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["rcs/agents/%1$s", id],
            body: parsed,
            model: Telnyx::Rcs::AgentResponse,
            options: options
          )
        end

        # Lists RCS agents owned by the authenticated organization, optionally filtered by
        # brand.
        #
        # @overload list(brand_id: nil, request_options: {})
        #
        # @param brand_id [String] Only return agents belonging to this brand.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Telnyx::Models::Rcs::AgentResponse>]
        #
        # @see Telnyx::Models::Rcs::AgentListParams
        def list(params = {})
          parsed, options = Telnyx::Rcs::AgentListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "rcs/agents",
            query: query,
            model: Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::AgentResponse],
            options: options
          )
        end

        # Adds the campaign and testing configuration, then starts asynchronous carrier
        # launch. Agent basics must already be submitted. Repeating a launch that is
        # already in progress returns the current agent without creating new work.
        #
        # @overload launch(id, campaign:, testing:, request_options: {})
        #
        # @param id [String] The Telnyx-assigned agent identifier.
        #
        # @param campaign [Telnyx::Models::Rcs::AgentLaunchParams::Campaign]
        #
        # @param testing [Telnyx::Models::Rcs::AgentTestingConfiguration]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rcs::AgentResponse]
        #
        # @see Telnyx::Models::Rcs::AgentLaunchParams
        def launch(id, params)
          parsed, options = Telnyx::Rcs::AgentLaunchParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["rcs/agents/%1$s/launch", id],
            body: parsed,
            model: Telnyx::Rcs::AgentResponse,
            options: options
          )
        end

        # Lists carrier approval records for an RCS agent. The provider may expose
        # per-carrier, hub-level, or bot-level approval status.
        #
        # @overload retrieve_carrier_approvals(id, request_options: {})
        #
        # @param id [String] The Telnyx-assigned agent identifier.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Telnyx::Models::Rcs::CarrierApprovalResponse>]
        #
        # @see Telnyx::Models::Rcs::AgentRetrieveCarrierApprovalsParams
        def retrieve_carrier_approvals(id, params = {})
          @client.request(
            method: :get,
            path: ["rcs/agents/%1$s/carrier_approvals", id],
            model: Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::CarrierApprovalResponse],
            options: params[:request_options]
          )
        end

        # Starts asynchronous provider provisioning and submits the agent's basic
        # configuration. The brand must be `VERIFIED`. Repeating this request for an
        # in-progress agent returns its current state without creating new work.
        #
        # @overload submit(id, request_options: {})
        #
        # @param id [String] The Telnyx-assigned agent identifier.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rcs::AgentResponse]
        #
        # @see Telnyx::Models::Rcs::AgentSubmitParams
        def submit(id, params = {})
          @client.request(
            method: :post,
            path: ["rcs/agents/%1$s/submit", id],
            model: Telnyx::Rcs::AgentResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @test_devices = Telnyx::Resources::Rcs::Agents::TestDevices.new(client: client)
        end
      end
    end
  end
end
