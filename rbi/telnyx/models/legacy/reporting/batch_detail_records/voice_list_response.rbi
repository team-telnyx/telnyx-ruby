# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class VoiceListResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse
                  ]
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse::OrHash
                  ]
              ).void
            end
            attr_writer :data

            sig do
              returns(
                T.nilable(
                  Telnyx::Legacy::Reporting::BatchDetailRecords::BatchCsvPaginationMeta
                )
              )
            end
            attr_reader :meta

            sig do
              params(
                meta:
                  Telnyx::Legacy::Reporting::BatchDetailRecords::BatchCsvPaginationMeta::OrHash
              ).void
            end
            attr_writer :meta

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse::OrHash
                  ],
                meta:
                  Telnyx::Legacy::Reporting::BatchDetailRecords::BatchCsvPaginationMeta::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data: nil, meta: nil)
            end

            sig do
              override.returns(
                {
                  data:
                    T::Array[
                      Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse
                    ],
                  meta:
                    Telnyx::Legacy::Reporting::BatchDetailRecords::BatchCsvPaginationMeta
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
