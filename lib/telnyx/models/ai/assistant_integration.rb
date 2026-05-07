# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class AssistantIntegration < Telnyx::Internal::Type::BaseModel
        # @!attribute integration_id
        #   Catalog integration ID to attach. This is the `id` from the integrations catalog
        #   at `/ai/integrations` (the same value also appears as `integration_id` on
        #   entries returned by `/ai/integrations/connections`). It is **not** the
        #   connection-level `id` from `/ai/integrations/connections`.
        #
        #   @return [String]
        required :integration_id, String

        # @!attribute allowed_list
        #   Optional per-assistant allowlist of integration tool names. When omitted or
        #   empty, all tools allowed by the connected integration are available to the
        #   assistant.
        #
        #   @return [Array<String>, nil]
        optional :allowed_list, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(integration_id:, allowed_list: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantIntegration} for more details.
        #
        #   Reference to a connected integration attached to an assistant. Discover
        #   available integrations with `/ai/integrations` and connected integrations with
        #   `/ai/integrations/connections`.
        #
        #   @param integration_id [String] Catalog integration ID to attach. This is the `id` from the integrations catalog
        #
        #   @param allowed_list [Array<String>] Optional per-assistant allowlist of integration tool names. When omitted or empt
      end
    end
  end
end
