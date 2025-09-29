# typed: strong

module Telnyx
  module Models
    module Reports
      class MdrUsageReportListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Reports::MdrUsageReportListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Telnyx::Reports::MdrUsageReport])) }
        attr_reader :data

        sig do
          params(data: T::Array[Telnyx::Reports::MdrUsageReport::OrHash]).void
        end
        attr_writer :data

        sig do
          returns(
            T.nilable(Telnyx::Models::Reports::MdrUsageReportListResponse::Meta)
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::Reports::MdrUsageReportListResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::Reports::MdrUsageReport::OrHash],
            meta:
              Telnyx::Models::Reports::MdrUsageReportListResponse::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::Reports::MdrUsageReport],
              meta: Telnyx::Models::Reports::MdrUsageReportListResponse::Meta
            }
          )
        end
        def to_hash
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Reports::MdrUsageReportListResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :page_number

          sig { params(page_number: Integer).void }
          attr_writer :page_number

          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          sig { returns(T.nilable(Integer)) }
          attr_reader :total_pages

          sig { params(total_pages: Integer).void }
          attr_writer :total_pages

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
            page_number: nil,
            page_size: nil,
            total_pages: nil,
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
end
