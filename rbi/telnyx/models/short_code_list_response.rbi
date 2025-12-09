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

      sig { returns(T.nilable(Telnyx::Models::ShortCodeListResponse::Meta)) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::Models::ShortCodeListResponse::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::ShortCode::OrHash],
          meta: Telnyx::Models::ShortCodeListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::ShortCode],
            meta: Telnyx::Models::ShortCodeListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ShortCodeListResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :page_number

        sig { returns(Integer) }
        attr_accessor :page_size

        sig { returns(Integer) }
        attr_accessor :total_pages

        sig { returns(Integer) }
        attr_accessor :total_results

        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            total_pages: Integer,
            total_results: Integer
          ).returns(T.attached_class)
        end
        def self.new(page_number:, page_size:, total_pages:, total_results:)
        end

        sig do
          override.returns(
            {
              page_number: Integer,
              page_size: Integer,
              total_pages: Integer,
              total_results: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
