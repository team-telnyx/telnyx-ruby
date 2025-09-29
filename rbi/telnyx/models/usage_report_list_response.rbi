# typed: strong

module Telnyx
  module Models
    class UsageReportListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::UsageReportListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
      attr_reader :data

      sig { params(data: T::Array[T::Hash[Symbol, T.anything]]).void }
      attr_writer :data

      sig { returns(T.nilable(Telnyx::Models::UsageReportListResponse::Meta)) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::Models::UsageReportListResponse::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[T::Hash[Symbol, T.anything]],
          meta: Telnyx::Models::UsageReportListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[T::Hash[Symbol, T.anything]],
            meta: Telnyx::Models::UsageReportListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::UsageReportListResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # Selected page number.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Records per single page
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Total number of pages.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_pages

        sig { params(total_pages: Integer).void }
        attr_writer :total_pages

        # Total number of results.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_results

        sig { params(total_results: Integer).void }
        attr_writer :total_results

        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            total_pages: Integer,
            total_results: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Selected page number.
          page_number: nil,
          # Records per single page
          page_size: nil,
          # Total number of pages.
          total_pages: nil,
          # Total number of results.
          total_results: nil
        )
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
