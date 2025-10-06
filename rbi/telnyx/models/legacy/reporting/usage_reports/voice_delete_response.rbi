# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class VoiceDeleteResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::UsageReports::VoiceDeleteResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # Legacy V2 CDR usage report response
            sig do
              returns(
                T.nilable(
                  Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Legacy V2 CDR usage report response
              data: nil
            )
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy
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
