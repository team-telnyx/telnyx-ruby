# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class SpeechToTextCreateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::BatchDetailRecords::SpeechToTextCreateParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # End date in ISO format with timezone (date range must be up to one month)
            sig { returns(Time) }
            attr_accessor :end_date

            # Start date in ISO format with timezone
            sig { returns(Time) }
            attr_accessor :start_date

            sig do
              params(
                end_date: Time,
                start_date: Time,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # End date in ISO format with timezone (date range must be up to one month)
              end_date:,
              # Start date in ISO format with timezone
              start_date:,
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
end
