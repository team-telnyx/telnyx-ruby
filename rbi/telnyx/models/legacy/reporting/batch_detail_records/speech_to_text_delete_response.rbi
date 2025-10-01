# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class SpeechToTextDeleteResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data: nil)
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse
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
