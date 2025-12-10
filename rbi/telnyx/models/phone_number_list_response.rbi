# typed: strong

module Telnyx
  module Models
    class PhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PhoneNumberListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::PhoneNumberDetailed])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::PhoneNumberDetailed::OrHash]).void }
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::PhoneNumberDetailed::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::PhoneNumberDetailed],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end
    end
  end
end
