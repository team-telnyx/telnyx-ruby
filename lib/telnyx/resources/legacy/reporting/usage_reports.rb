# frozen_string_literal: true

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class UsageReports
          # @return [Telnyx::Resources::Legacy::Reporting::UsageReports::Messaging]
          attr_reader :messaging

          # @return [Telnyx::Resources::Legacy::Reporting::UsageReports::NumberLookup]
          attr_reader :number_lookup

          # @return [Telnyx::Resources::Legacy::Reporting::UsageReports::Voice]
          attr_reader :voice

          # Generate and fetch speech to text usage report synchronously. This endpoint will
          # both generate and fetch the speech to text report over a specified time period.
          #
          # @overload retrieve_speech_to_text(end_date: nil, start_date: nil, request_options: {})
          #
          # @param end_date [Time]
          # @param start_date [Time]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Legacy::Reporting::UsageReportRetrieveSpeechToTextResponse]
          #
          # @see Telnyx::Models::Legacy::Reporting::UsageReportRetrieveSpeechToTextParams
          def retrieve_speech_to_text(params = {})
            parsed, options = Telnyx::Legacy::Reporting::UsageReportRetrieveSpeechToTextParams.dump_request(params)
            @client.request(
              method: :get,
              path: "legacy/reporting/usage_reports/speech_to_text",
              query: parsed,
              model: Telnyx::Models::Legacy::Reporting::UsageReportRetrieveSpeechToTextResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @messaging = Telnyx::Resources::Legacy::Reporting::UsageReports::Messaging.new(client: client)
            @number_lookup = Telnyx::Resources::Legacy::Reporting::UsageReports::NumberLookup.new(client: client)
            @voice = Telnyx::Resources::Legacy::Reporting::UsageReports::Voice.new(client: client)
          end
        end
      end
    end
  end
end
