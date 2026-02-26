# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class CivicAddressListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::CivicAddressListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(T::Array[Telnyx::ExternalConnections::CivicAddress])
          )
        end
        attr_reader :data

        sig do
          params(
            data: T::Array[Telnyx::ExternalConnections::CivicAddress::OrHash]
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: T::Array[Telnyx::ExternalConnections::CivicAddress::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::ExternalConnections::CivicAddress] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
