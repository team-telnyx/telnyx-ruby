# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class PolicyUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::PolicyUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        sig { returns(String) }
        attr_accessor :name

        # A policy this one builds on, by name. The policy starts with the base's
        # guardrails.
        sig { returns(T.nilable(String)) }
        attr_accessor :base

        # What the policy is for.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The guardrails a policy adds to its base's, and the ones it removes from them,
        # by name.
        sig do
          returns(
            T.nilable(Telnyx::AgentGateways::AgentGatewayPolicyGuardrails)
          )
        end
        attr_reader :guardrails

        sig do
          params(
            guardrails:
              Telnyx::AgentGateways::AgentGatewayPolicyGuardrails::OrHash
          ).void
        end
        attr_writer :guardrails

        # A condition on the model, by name or regular expression. The policy's guardrails
        # run only on requests for a matching model. `null` matches every model.
        sig { returns(T.nilable(String)) }
        attr_accessor :model

        # Ordered steps that run in place of the policy's guardrails running
        # independently.
        sig do
          returns(T.nilable(Telnyx::AgentGateways::AgentGatewayPolicyPipeline))
        end
        attr_reader :pipeline

        sig do
          params(
            pipeline:
              T.nilable(
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::OrHash
              )
          ).void
        end
        attr_writer :pipeline

        sig do
          params(
            instance_id: String,
            name: String,
            base: T.nilable(String),
            description: T.nilable(String),
            guardrails:
              Telnyx::AgentGateways::AgentGatewayPolicyGuardrails::OrHash,
            model: T.nilable(String),
            pipeline:
              T.nilable(
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
          name:,
          # A policy this one builds on, by name. The policy starts with the base's
          # guardrails.
          base: nil,
          # What the policy is for.
          description: nil,
          # The guardrails a policy adds to its base's, and the ones it removes from them,
          # by name.
          guardrails: nil,
          # A condition on the model, by name or regular expression. The policy's guardrails
          # run only on requests for a matching model. `null` matches every model.
          model: nil,
          # Ordered steps that run in place of the policy's guardrails running
          # independently.
          pipeline: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              instance_id: String,
              name: String,
              base: T.nilable(String),
              description: T.nilable(String),
              guardrails: Telnyx::AgentGateways::AgentGatewayPolicyGuardrails,
              model: T.nilable(String),
              pipeline:
                T.nilable(Telnyx::AgentGateways::AgentGatewayPolicyPipeline),
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
