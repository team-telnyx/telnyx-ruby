# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class VoiceDeleteResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceDeleteResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # Response object for CDR detailed report
            sig do
              returns(
                T.nilable(
                  Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Response object for CDR detailed report
              data: nil
            )
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse
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
