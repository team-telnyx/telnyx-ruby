# frozen_string_literal: true

module Telnyx
  module Resources
    class AgentGateways
      # Checks an instance runs on model and tool requests.
      class Guardrails
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::GuardrailCreateParams} for more details.
        #
        # Adds a check the instance runs on model and tool requests. It runs on every
        # request when `always_on`, and otherwise on the requests that name it in
        # `guardrails`. The instance must be `ready`; otherwise the request answers `409`.
        #
        # @overload create(instance_id, modes:, name:, type:, always_on: nil, settings: nil, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param modes [Array<Symbol, Telnyx::Models::AgentGateways::GuardrailCreateParams::Mode>] When the guardrail runs. Each type runs in some modes only.
        #
        # @param name [String] A name, unique on the instance. A request names it in its `guardrails` field.
        #
        # @param type [Symbol, Telnyx::Models::AgentGateways::GuardrailCreateParams::Type] The kind of check. It cannot change after create.
        #
        # @param always_on [Boolean] `true` runs the guardrail on every request, and a request cannot turn it off. `f
        #
        # @param settings [Object] The type's settings. `content_filter`: `patterns` (prebuilt patterns by `name`,
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayGuardrailResponse]
        #
        # @see Telnyx::Models::AgentGateways::GuardrailCreateParams
        def create(instance_id, params)
          parsed, options = Telnyx::AgentGateways::GuardrailCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["agent_gateways/%1$s/guardrails", instance_id],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayGuardrailResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::GuardrailUpdateParams} for more details.
        #
        # Changes a guardrail's `name`, `modes`, `always_on`, or `settings`. `settings` is
        # replaced whole, secrets included. The `type` cannot change. The instance must be
        # `ready`; otherwise the request answers `409`.
        #
        # @overload update(guardrail_id, instance_id:, always_on: nil, modes: nil, name: nil, settings: nil, request_options: {})
        #
        # @param guardrail_id [String] Path param: The guardrail's `id`.
        #
        # @param instance_id [String] Path param: The Agent Gateway's `id`.
        #
        # @param always_on [Boolean] Body param: `true` runs the guardrail on every request, and a request cannot tur
        #
        # @param modes [Array<Symbol, Telnyx::Models::AgentGateways::GuardrailUpdateParams::Mode>] Body param: When the guardrail runs. Each type runs in some modes only.
        #
        # @param name [String] Body param: A name, unique on the instance. A request names it in its `guardrail
        #
        # @param settings [Object] Body param: The type's settings. `content_filter`: `patterns` (prebuilt patterns
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayGuardrailResponse]
        #
        # @see Telnyx::Models::AgentGateways::GuardrailUpdateParams
        def update(guardrail_id, params)
          parsed, options = Telnyx::AgentGateways::GuardrailUpdateParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["agent_gateways/%1$s/guardrails/%2$s", instance_id, guardrail_id],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayGuardrailResponse,
            options: options
          )
        end

        # Lists the instance's guardrails, without their secrets. The instance must be
        # `ready`; otherwise the request answers `409`.
        #
        # @overload list(instance_id, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::GuardrailListResponse]
        #
        # @see Telnyx::Models::AgentGateways::GuardrailListParams
        def list(instance_id, params = {})
          @client.request(
            method: :get,
            path: ["agent_gateways/%1$s/guardrails", instance_id],
            model: Telnyx::Models::AgentGateways::GuardrailListResponse,
            options: params[:request_options]
          )
        end

        # Removes a guardrail and returns it as it was. The instance must be `ready`;
        # otherwise the request answers `409`.
        #
        # @overload delete(guardrail_id, instance_id:, request_options: {})
        #
        # @param guardrail_id [String] The guardrail's `id`.
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayGuardrailResponse]
        #
        # @see Telnyx::Models::AgentGateways::GuardrailDeleteParams
        def delete(guardrail_id, params)
          parsed, options = Telnyx::AgentGateways::GuardrailDeleteParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["agent_gateways/%1$s/guardrails/%2$s", instance_id, guardrail_id],
            model: Telnyx::AgentGateways::AgentGatewayGuardrailResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
