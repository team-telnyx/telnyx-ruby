# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class PolicyAttachmentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::PolicyAttachmentCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        # The policy to apply, by name.
        sig { returns(String) }
        attr_accessor :policy

        # `true` applies the policy only to the requests no other attachment matches.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :default

        sig { params(default: T::Boolean).void }
        attr_writer :default

        # The models whose requests the policy applies to, by name. A name can use `*` as
        # a wildcard. Empty applies the policy to every request.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :models

        sig { params(models: T::Array[String]).void }
        attr_writer :models

        # An attachment with a priority applies before the others.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :priority

        sig do
          params(
            instance_id: String,
            policy: String,
            default: T::Boolean,
            models: T::Array[String],
            priority: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
          # The policy to apply, by name.
          policy:,
          # `true` applies the policy only to the requests no other attachment matches.
          default: nil,
          # The models whose requests the policy applies to, by name. A name can use `*` as
          # a wildcard. Empty applies the policy to every request.
          models: nil,
          # An attachment with a priority applies before the others.
          priority: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              instance_id: String,
              policy: String,
              default: T::Boolean,
              models: T::Array[String],
              priority: T.nilable(Integer),
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
