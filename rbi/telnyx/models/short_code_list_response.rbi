# typed: strong

module Telnyx
  module Models
    class ShortCodeListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ShortCodeListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::ShortCode])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::ShortCode::OrHash]).void }
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::ShortCode::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          { data: T::Array[Telnyx::ShortCode], meta: Telnyx::PaginationMeta }
        )
      end
      def to_hash
      end
    end
  end
end
