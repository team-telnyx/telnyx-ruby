# typed: strong

module Telnyx
  module Resources
    class Portouts
      class Reports
        # Generate reports about port-out operations.
        sig do
          params(
            params: Telnyx::Portouts::ExportPortoutsCsvReport::OrHash,
            report_type:
              Telnyx::Portouts::ReportCreateParams::ReportType::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Portouts::ReportCreateResponse)
        end
        def create(
          # The parameters for generating a port-outs CSV report.
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
          ).returns(Telnyx::Models::Portouts::ReportRetrieveResponse)
        end
        def retrieve(
          # Identifies a report.
          id,
          request_options: {}
        )
        end

        # List the reports generated about port-out operations.
        sig do
          params(
            filter: Telnyx::Portouts::ReportListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Portouts::PortoutReport
            ]
          )
        end
        def list(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[report_type], filter[status]
          filter: nil,
          page_number: nil,
          page_size: nil,
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
