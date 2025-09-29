# typed: strong

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class UsageReports
          sig do
            returns(
              Telnyx::Resources::Legacy::Reporting::UsageReports::Messaging
            )
          end
          attr_reader :messaging

          sig do
            returns(
              Telnyx::Resources::Legacy::Reporting::UsageReports::NumberLookup
            )
          end
          attr_reader :number_lookup

          sig do
            returns(Telnyx::Resources::Legacy::Reporting::UsageReports::Voice)
          end
          attr_reader :voice

          # Generate and fetch speech to text usage report synchronously. This endpoint will
          # both generate and fetch the speech to text report over a specified time period.
          sig do
            params(
              end_date: Time,
              start_date: Time,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Legacy::Reporting::UsageReportRetrieveSpeechToTextResponse
            )
          end
          def retrieve_speech_to_text(
            end_date: nil,
            start_date: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
