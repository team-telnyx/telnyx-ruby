# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Guardrails#delete
      class GuardrailDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute guardrail_id
        #
        #   @return [String]
        required :guardrail_id, String

        # @!method initialize(instance_id:, guardrail_id:, request_options: {})
        #   @param instance_id [String]
        #   @param guardrail_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
