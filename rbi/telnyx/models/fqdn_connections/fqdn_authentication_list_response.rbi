# typed: strong

module Telnyx
  module Models
    module FqdnConnections
      class FqdnAuthenticationListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::FqdnConnections::FqdnAuthenticationListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication }
          )
        end
        def to_hash
        end
      end
    end
  end
end
