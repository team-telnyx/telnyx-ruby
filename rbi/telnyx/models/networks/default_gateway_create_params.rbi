# typed: strong

module Telnyx
  module Models
    module Networks
      class DefaultGatewayCreateParams < Telnyx::Models::Networks::NetworksDefaultGateway
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Networks::DefaultGatewayCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :network_identifier

        sig do
          params(
            network_identifier: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(network_identifier:, request_options: {})
        end

        sig do
          override.returns(
            {
              network_identifier: String,
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
