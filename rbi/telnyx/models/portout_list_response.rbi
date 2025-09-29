# typed: strong

module Telnyx
  module Models
    class PortoutListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::PortoutListResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[Telnyx::PortoutDetails])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::PortoutDetails::OrHash]).void }
      attr_writer :data

      sig { returns(T.nilable(Telnyx::Metadata)) }
      attr_reader :meta

      sig { params(meta: Telnyx::Metadata::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::PortoutDetails::OrHash],
          meta: Telnyx::Metadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          { data: T::Array[Telnyx::PortoutDetails], meta: Telnyx::Metadata }
        )
      end
      def to_hash
      end
    end
  end
end
