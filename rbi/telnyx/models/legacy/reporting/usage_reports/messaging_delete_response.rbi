# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class MessagingDeleteResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # Legacy V2 MDR usage report response
            sig do
              returns(
                T.nilable(
                  Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Legacy V2 MDR usage report response
              data: nil
            )
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy
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
