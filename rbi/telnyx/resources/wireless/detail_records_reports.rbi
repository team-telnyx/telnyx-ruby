# typed: strong

module Telnyx
  module Resources
    class Wireless
      class DetailRecordsReports
        # Asynchronously create a report containing Wireless Detail Records (WDRs) for the
        # SIM cards that consumed wireless data in the given time period.
        sig do
          params(
            end_time: String,
            start_time: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Wireless::DetailRecordsReportCreateResponse)
        end
        def create(
          # ISO 8601 formatted date-time indicating the end time.
          end_time: nil,
          # ISO 8601 formatted date-time indicating the start time.
          start_time: nil,
          request_options: {}
        )
        end

        # Returns one specific WDR report
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Wireless::DetailRecordsReportRetrieveResponse
          )
        end
        def retrieve(
          # Identifies the resource.
          id,
          request_options: {}
        )
        end

        # Returns the WDR Reports that match the given parameters.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Wireless::DetailRecordsReportListResponse)
        end
        def list(
          # The page number to load.
          page_number: nil,
          # The size of the page.
          page_size: nil,
          request_options: {}
        )
        end

        # Deletes one specific WDR report.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Wireless::DetailRecordsReportDeleteResponse)
        end
        def delete(
          # Identifies the resource.
          id,
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
