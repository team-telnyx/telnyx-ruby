# typed: strong

module Telnyx
  module Models
    AgentGatewayPolicyAttachment = AgentGateways::AgentGatewayPolicyAttachment

    module AgentGateways
      class AgentGatewayPolicyAttachment < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayPolicyAttachment,
              Telnyx::Internal::AnyHash
            )
          end

        # The attachment's ID.
        sig { returns(String) }
        attr_accessor :id

        # When the attachment was created.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # `true` applies the policy only to the requests no other attachment matches.
        sig { returns(T::Boolean) }
        attr_accessor :default

        # The models whose requests the policy applies to, by name. A name can use `*` as
        # a wildcard. Empty applies the policy to every request.
        sig { returns(T::Array[String]) }
        attr_accessor :models

        # The policy to apply, by name.
        sig { returns(String) }
        attr_accessor :policy

        # An attachment with a priority applies before the others.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :priority

        # When the attachment last changed.
        sig { returns(T.nilable(Time)) }
        attr_accessor :updated_at

        # Where an instance applies a policy.
        sig do
          params(
            id: String,
            created_at: T.nilable(Time),
            default: T::Boolean,
            models: T::Array[String],
            policy: String,
            priority: T.nilable(Integer),
            updated_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # The attachment's ID.
          id:,
          # When the attachment was created.
          created_at:,
          # `true` applies the policy only to the requests no other attachment matches.
          default:,
          # The models whose requests the policy applies to, by name. A name can use `*` as
          # a wildcard. Empty applies the policy to every request.
          models:,
          # The policy to apply, by name.
          policy:,
          # An attachment with a priority applies before the others.
          priority:,
          # When the attachment last changed.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: T.nilable(Time),
              default: T::Boolean,
              models: T::Array[String],
              policy: String,
              priority: T.nilable(Integer),
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
