# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class NumberLookupRetrieveResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupRetrieveResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # Telco data usage report response
            sig do
              returns(
                T.nilable(
                  Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Telco data usage report response
              data: nil
            )
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse
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
end
