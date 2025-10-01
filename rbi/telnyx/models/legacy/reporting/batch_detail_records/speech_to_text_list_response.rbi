# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class SpeechToTextListResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextListResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse
                  ]
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse::OrHash
                  ]
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(data: nil)
            end

            sig do
              override.returns(
                {
                  data:
                    T::Array[
                      Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse
                    ]
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
