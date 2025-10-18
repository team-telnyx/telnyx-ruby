# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class VoiceListResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy
                  ]
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy::OrHash
                  ]
              ).void
            end
            attr_writer :data

            sig do
              returns(
                T.nilable(
                  Telnyx::Legacy::Reporting::UsageReports::StandardPaginationMeta
                )
              )
            end
            attr_reader :meta

            sig do
              params(
                meta:
                  Telnyx::Legacy::Reporting::UsageReports::StandardPaginationMeta::OrHash
              ).void
            end
            attr_writer :meta

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy::OrHash
                  ],
                meta:
                  Telnyx::Legacy::Reporting::UsageReports::StandardPaginationMeta::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data: nil, meta: nil)
            end

            sig do
              override.returns(
                {
                  data:
                    T::Array[
                      Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy
                    ],
                  meta:
                    Telnyx::Legacy::Reporting::UsageReports::StandardPaginationMeta
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
