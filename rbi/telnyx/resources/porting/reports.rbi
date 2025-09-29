# typed: strong

module Telnyx
  module Resources
    class Porting
      class Reports
        # Generate reports about porting operations.
        sig do
          params(
            params: Telnyx::Porting::ExportPortingOrdersCsvReport::OrHash,
            report_type:
              Telnyx::Porting::ReportCreateParams::ReportType::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Porting::ReportCreateResponse)
        end
        def create(
          # The parameters for generating a porting orders CSV report.
          params:,
          # Identifies the type of report
          report_type:,
          request_options: {}
        )
        end

        # Retrieve a specific report generated.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Porting::ReportRetrieveResponse)
        end
        def retrieve(
          # Identifies a report.
          id,
          request_options: {}
        )
        end

        # List the reports generated about porting operations.
        sig do
          params(
            filter: Telnyx::Porting::ReportListParams::Filter::OrHash,
            page: Telnyx::Porting::ReportListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Porting::ReportListResponse)
        end
        def list(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[report_type], filter[status]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
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
