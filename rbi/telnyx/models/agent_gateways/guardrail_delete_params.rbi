# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class GuardrailDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::GuardrailDeleteParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        sig { returns(String) }
        attr_accessor :guardrail_id

        sig do
          params(
            instance_id: String,
            guardrail_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(instance_id:, guardrail_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              instance_id: String,
              guardrail_id: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
