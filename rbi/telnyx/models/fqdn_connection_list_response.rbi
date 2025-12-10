# typed: strong

module Telnyx
  module Models
    class FqdnConnectionListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::FqdnConnectionListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::FqdnConnection])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::FqdnConnection::OrHash]).void }
      attr_writer :data

      sig { returns(T.nilable(Telnyx::ConnectionsPaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::ConnectionsPaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::FqdnConnection::OrHash],
          meta: Telnyx::ConnectionsPaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::FqdnConnection],
            meta: Telnyx::ConnectionsPaginationMeta
          }
        )
      end
      def to_hash
      end
    end
  end
end
