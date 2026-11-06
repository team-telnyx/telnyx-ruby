# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayAwsSigV4Auth < Telnyx::Internal::Type::BaseModel
        # @!attribute region
        #   The AWS region to sign for.
        #
        #   @return [String]
        required :region, String

        # @!attribute type
        #
        #   @return [Symbol, :aws_sigv4]
        required :type, const: :aws_sigv4

        # @!attribute role_name
        #   The ARN of a role for the gateway to assume.
        #
        #   @return [String, nil]
        optional :role_name, String, nil?: true

        # @!attribute service
        #   The AWS service to sign for.
        #
        #   @return [String, nil]
        optional :service, String

        request_only do
          # @!attribute access_key_id
          #
          #   @return [String, nil]
          optional :access_key_id, String, nil?: true

          # @!attribute secret_access_key
          #
          #   @return [String, nil]
          optional :secret_access_key, String, nil?: true

          # @!attribute session_token
          #
          #   @return [String, nil]
          optional :session_token, String, nil?: true
        end

        # @!method initialize(region:, access_key_id: nil, role_name: nil, secret_access_key: nil, service: nil, session_token: nil, type: :aws_sigv4)
        #   The gateway signs each request with AWS Signature Version 4. Without keys or a
        #   role, it uses the instance's own AWS identity. Keys are write-only.
        #
        #   @param region [String] The AWS region to sign for.
        #
        #   @param access_key_id [String, nil]
        #
        #   @param role_name [String, nil] The ARN of a role for the gateway to assume.
        #
        #   @param secret_access_key [String, nil]
        #
        #   @param service [String] The AWS service to sign for.
        #
        #   @param session_token [String, nil]
        #
        #   @param type [Symbol, :aws_sigv4]
      end
    end

    AgentGatewayAwsSigV4Auth = AgentGateways::AgentGatewayAwsSigV4Auth
  end
end
