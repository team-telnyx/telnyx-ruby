# typed: strong

module Telnyx
  module Models
    class MediaListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::MediaListResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[Telnyx::MediaResource])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::MediaResource::OrHash]).void }
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::MediaResource::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::MediaResource],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end
    end
  end
end
