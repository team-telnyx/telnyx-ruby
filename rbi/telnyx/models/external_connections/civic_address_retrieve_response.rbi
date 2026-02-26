# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class CivicAddressRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::ExternalConnections::CivicAddress)) }
        attr_reader :data

        sig do
          params(data: Telnyx::ExternalConnections::CivicAddress::OrHash).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::ExternalConnections::CivicAddress::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: Telnyx::ExternalConnections::CivicAddress })
        end
        def to_hash
        end
      end
    end
  end
end
