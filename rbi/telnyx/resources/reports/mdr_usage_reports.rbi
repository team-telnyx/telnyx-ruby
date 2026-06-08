# typed: strong

module Telnyx
  module Resources
    class Reports
      # Messaging usage reports
      class MdrUsageReports
        # Submit request for new new messaging usage report. This endpoint will pull and
        # aggregate messaging data in specified time period.
        sig do
          params(
            aggregation_type:
              Telnyx::Reports::MdrUsageReportCreateParams::AggregationType::OrSymbol,
            end_date: Time,
            start_date: Time,
            profiles: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Reports::MdrUsageReportCreateResponse)
        end
        def create(
          aggregation_type:,
          end_date:,
          start_date:,
          profiles: nil,
          request_options: {}
        )
        end

        # Fetch a single messaging usage report by id
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Reports::MdrUsageReportRetrieveResponse)
        end
        def retrieve(
          # Unique identifier of the resource.
          id,
          request_options: {}
        )
        end

        # Fetch all messaging usage reports. Usage reports are aggregated messaging data
        # for specified time period and breakdown
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Reports::MdrUsageReport
            ]
          )
        end
        def list(page_number: nil, page_size: nil, request_options: {})
        end

        # Delete messaging usage report by id
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Reports::MdrUsageReportDeleteResponse)
        end
        def delete(
          # Unique identifier of the resource.
          id,
          request_options: {}
        )
        end

        # Generate and fetch messaging usage report synchronously. This endpoint will both
        # generate and fetch the messaging report over a specified time period. No polling
        # is necessary but the response may take up to a couple of minutes.
        sig do
          params(
            aggregation_type:
              Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType::OrSymbol,
            end_date: Time,
            profiles: T::Array[String],
            start_date: Time,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Reports::MdrUsageReportFetchSyncResponse)
        end
        def fetch_sync(
          # Type of aggregation to apply to the results.
          aggregation_type:,
          # End of the date range filter (inclusive, ISO 8601).
          end_date: nil,
          # Filter results by profile.
          profiles: nil,
          # Start of the date range filter (inclusive, ISO 8601).
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
