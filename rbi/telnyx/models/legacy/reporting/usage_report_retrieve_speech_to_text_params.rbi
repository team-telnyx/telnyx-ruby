# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        class UsageReportRetrieveSpeechToTextParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Legacy::Reporting::UsageReportRetrieveSpeechToTextParams,
                Telnyx::Internal::AnyHash
              )
            end

          # End of the date range filter (inclusive, ISO 8601).
          sig { returns(T.nilable(Time)) }
          attr_reader :end_date

          sig { params(end_date: Time).void }
          attr_writer :end_date

          # Start of the date range filter (inclusive, ISO 8601).
          sig { returns(T.nilable(Time)) }
          attr_reader :start_date

          sig { params(start_date: Time).void }
          attr_writer :start_date

          sig do
            params(
              end_date: Time,
              start_date: Time,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # End of the date range filter (inclusive, ISO 8601).
            end_date: nil,
            # Start of the date range filter (inclusive, ISO 8601).
            start_date: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                end_date: Time,
                start_date: Time,
                request_options: Telnyx::RequestOptions
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
