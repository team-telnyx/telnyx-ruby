# typed: strong

module Telnyx
  module Models
    class MessagingProfileMetricListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingProfileMetricListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
      attr_reader :data

      sig { params(data: T::Array[T::Hash[Symbol, T.anything]]).void }
      attr_writer :data

      sig { returns(T.nilable(Telnyx::MessagingPaginationMeta0b38e7044b)) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::MessagingPaginationMeta0b38e7044b::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[T::Hash[Symbol, T.anything]],
          meta: Telnyx::MessagingPaginationMeta0b38e7044b::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[T::Hash[Symbol, T.anything]],
            meta: Telnyx::MessagingPaginationMeta0b38e7044b
          }
        )
      end
      def to_hash
      end
    end
  end
end
