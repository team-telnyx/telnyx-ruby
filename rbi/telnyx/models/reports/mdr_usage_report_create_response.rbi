# typed: strong

module Telnyx
  module Models
    module Reports
      class MdrUsageReportCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Reports::MdrUsageReportCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Reports::MdrUsageReport)) }
        attr_reader :data

        sig { params(data: Telnyx::Reports::MdrUsageReport::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Reports::MdrUsageReport::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Reports::MdrUsageReport }) }
        def to_hash
        end
      end
    end
  end
end
