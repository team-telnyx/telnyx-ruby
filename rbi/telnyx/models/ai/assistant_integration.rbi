# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantIntegration < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantIntegration, Telnyx::Internal::AnyHash)
          end

        # Catalog integration ID to attach. This is the `id` from the integrations catalog
        # at `/ai/integrations` (the same value also appears as `integration_id` on
        # entries returned by `/ai/integrations/connections`). It is **not** the
        # connection-level `id` from `/ai/integrations/connections`.
        sig { returns(String) }
        attr_accessor :integration_id

        # Optional per-assistant allowlist of integration tool names. When omitted or
        # empty, all tools allowed by the connected integration are available to the
        # assistant.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_list

        sig { params(allowed_list: T::Array[String]).void }
        attr_writer :allowed_list

        # Reference to a connected integration attached to an assistant. Discover
        # available integrations with `/ai/integrations` and connected integrations with
        # `/ai/integrations/connections`.
        sig do
          params(
            integration_id: String,
            allowed_list: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Catalog integration ID to attach. This is the `id` from the integrations catalog
          # at `/ai/integrations` (the same value also appears as `integration_id` on
          # entries returned by `/ai/integrations/connections`). It is **not** the
          # connection-level `id` from `/ai/integrations/connections`.
          integration_id:,
          # Optional per-assistant allowlist of integration tool names. When omitted or
          # empty, all tools allowed by the connected integration are available to the
          # assistant.
          allowed_list: nil
        )
        end

        sig do
          override.returns(
            { integration_id: String, allowed_list: T::Array[String] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
