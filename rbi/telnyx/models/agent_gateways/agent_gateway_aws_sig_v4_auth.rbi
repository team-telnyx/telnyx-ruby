# typed: strong

module Telnyx
  module Models
    AgentGatewayAwsSigV4Auth = AgentGateways::AgentGatewayAwsSigV4Auth

    module AgentGateways
      class AgentGatewayAwsSigV4Auth < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayAwsSigV4Auth,
              Telnyx::Internal::AnyHash
            )
          end

        # The AWS region to sign for.
        sig { returns(String) }
        attr_accessor :region

        sig { returns(Symbol) }
        attr_accessor :type

        # The ARN of a role for the gateway to assume.
        sig { returns(T.nilable(String)) }
        attr_accessor :role_name

        # The AWS service to sign for.
        sig { returns(T.nilable(String)) }
        attr_reader :service

        sig { params(service: String).void }
        attr_writer :service

        sig { returns(T.nilable(String)) }
        attr_accessor :access_key_id

        sig { returns(T.nilable(String)) }
        attr_accessor :secret_access_key

        sig { returns(T.nilable(String)) }
        attr_accessor :session_token

        # The gateway signs each request with AWS Signature Version 4. Without keys or a
        # role, it uses the instance's own AWS identity. Keys are write-only.
        sig do
          params(
            region: String,
            access_key_id: T.nilable(String),
            role_name: T.nilable(String),
            secret_access_key: T.nilable(String),
            service: String,
            session_token: T.nilable(String),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The AWS region to sign for.
          region:,
          access_key_id: nil,
          # The ARN of a role for the gateway to assume.
          role_name: nil,
          secret_access_key: nil,
          # The AWS service to sign for.
          service: nil,
          session_token: nil,
          type: :aws_sigv4
        )
        end

        sig do
          override.returns(
            {
              region: String,
              type: Symbol,
              access_key_id: T.nilable(String),
              role_name: T.nilable(String),
              secret_access_key: T.nilable(String),
              service: String,
              session_token: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
