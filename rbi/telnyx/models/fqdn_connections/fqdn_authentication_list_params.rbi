# typed: strong

module Telnyx
  module Models
    module FqdnConnections
      class FqdnAuthenticationListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::FqdnConnections::FqdnAuthenticationListParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :fqdn_connection_id

        sig do
          params(
            fqdn_connection_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(fqdn_connection_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              fqdn_connection_id: String,
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
