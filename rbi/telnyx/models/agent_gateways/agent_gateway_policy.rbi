# typed: strong

module Telnyx
  module Models
    AgentGatewayPolicy = AgentGateways::AgentGatewayPolicy

    module AgentGateways
      class AgentGatewayPolicy < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayPolicy,
              Telnyx::Internal::AnyHash
            )
          end

        # A policy this one builds on, by name. The policy starts with the base's
        # guardrails.
        sig { returns(T.nilable(String)) }
        attr_accessor :base

        # When the policy's current version was created. An update creates a new version.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # What the policy is for.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The guardrails a policy adds to its base's, and the ones it removes from them,
        # by name.
        sig { returns(Telnyx::AgentGateways::AgentGatewayPolicyGuardrails) }
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

        # A name, unique on the instance. A request names the policy in its `policies`
        # field.
        sig { returns(String) }
        attr_accessor :name

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

        # When the policy last changed.
        sig { returns(T.nilable(Time)) }
        attr_accessor :updated_at

        # A named set of guardrails.
        sig do
          params(
            base: T.nilable(String),
            created_at: T.nilable(Time),
            description: T.nilable(String),
            guardrails:
              Telnyx::AgentGateways::AgentGatewayPolicyGuardrails::OrHash,
            model: T.nilable(String),
            name: String,
            pipeline:
              T.nilable(
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::OrHash
              ),
            updated_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # A policy this one builds on, by name. The policy starts with the base's
          # guardrails.
          base:,
          # When the policy's current version was created. An update creates a new version.
          created_at:,
          # What the policy is for.
          description:,
          # The guardrails a policy adds to its base's, and the ones it removes from them,
          # by name.
          guardrails:,
          # A condition on the model, by name or regular expression. The policy's guardrails
          # run only on requests for a matching model. `null` matches every model.
          model:,
          # A name, unique on the instance. A request names the policy in its `policies`
          # field.
          name:,
          # Ordered steps that run in place of the policy's guardrails running
          # independently.
          pipeline:,
          # When the policy last changed.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              base: T.nilable(String),
              created_at: T.nilable(Time),
              description: T.nilable(String),
              guardrails: Telnyx::AgentGateways::AgentGatewayPolicyGuardrails,
              model: T.nilable(String),
              name: String,
              pipeline:
                T.nilable(Telnyx::AgentGateways::AgentGatewayPolicyPipeline),
              updated_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
