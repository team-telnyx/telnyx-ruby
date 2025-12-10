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

        sig { returns(T.nilable(Telnyx::Reports::PaginationMetaReporting)) }
        attr_reader :meta

        sig do
          params(meta: Telnyx::Reports::PaginationMetaReporting::OrHash).void
        end
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::Reports::MdrUsageReport::OrHash],
            meta: Telnyx::Reports::PaginationMetaReporting::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::Reports::MdrUsageReport],
              meta: Telnyx::Reports::PaginationMetaReporting
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
