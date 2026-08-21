# typed: strong

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class UsageReports
          # Number lookup usage reports
          class NumberLookup
            # Submits a new telco data (number lookup) usage report request. The report is
            # generated asynchronously; retrieve it by its identifier once ready.
            sig do
              params(
                aggregation_type:
                  Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::OrSymbol,
                end_date: Date,
                managed_accounts: T::Array[String],
                start_date: Date,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupCreateResponse
              )
            end
            def create(
              # Type of aggregation for the report
              aggregation_type: nil,
              # End date for the usage report
              end_date: nil,
              # List of managed accounts to include in the report
              managed_accounts: nil,
              # Start date for the usage report
              start_date: nil,
              request_options: {}
            )
            end

            # Retrieve a specific telco data usage report by its ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupRetrieveResponse
              )
            end
            def retrieve(
              # Unique identifier of the resource.
              id,
              request_options: {}
            )
            end

            # Retrieve a paginated list of telco data usage reports
            sig do
              params(
                page: Integer,
                per_page: Integer,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Internal::PerPagePagination[
                  Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse
                ]
              )
            end
            def list(
              # Page number to retrieve (1-based).
              page: nil,
              # Filter results by per page.
              per_page: nil,
              request_options: {}
            )
            end

            # Delete a specific telco data usage report by its ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).void
            end
            def delete(
              # Unique identifier of the resource.
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
  end
end
