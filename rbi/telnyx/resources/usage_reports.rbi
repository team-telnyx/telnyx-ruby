# typed: strong

module Telnyx
  module Resources
    class UsageReports
      # Get Telnyx usage data by product, broken out by the specified dimensions
      sig do
        params(
          dimensions: T::Array[String],
          metrics: T::Array[String],
          product: String,
          date_range: String,
          end_date: String,
          filter: String,
          format_: Telnyx::UsageReportListParams::Format::OrSymbol,
          managed_accounts: T::Boolean,
          page: Telnyx::UsageReportListParams::Page::OrHash,
          sort: T::Array[String],
          start_date: String,
          authorization_bearer: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::UsageReportListResponse)
      end
      def list(
        # Query param: Breakout by specified product dimensions
        dimensions:,
        # Query param: Specified product usage values
        metrics:,
        # Query param: Telnyx product
        product:,
        # Query param: A more user-friendly way to specify the timespan you want to filter
        # by. More options can be found in the Telnyx API Reference docs.
        date_range: nil,
        # Query param: The end date for the time range you are interested in. The maximum
        # time range is 31 days. Format: YYYY-MM-DDTHH:mm:ssZ
        end_date: nil,
        # Query param: Filter records on dimensions
        filter: nil,
        # Query param: Specify the response format (csv or json). JSON is returned by
        # default, even if not specified.
        format_: nil,
        # Query param: Return the aggregations for all Managed Accounts under the user
        # making the request.
        managed_accounts: nil,
        # Query param: Consolidated page parameter (deepObject style). Originally:
        # page[number], page[size]
        page: nil,
        # Query param: Specifies the sort order for results
        sort: nil,
        # Query param: The start date for the time range you are interested in. The
        # maximum time range is 31 days. Format: YYYY-MM-DDTHH:mm:ssZ
        start_date: nil,
        # Header param: Authenticates the request with your Telnyx API V2 KEY
        authorization_bearer: nil,
        request_options: {}
      )
      end

      # Get the Usage Reports options for querying usage, including the products
      # available and their respective metrics and dimensions
      sig do
        params(
          product: String,
          authorization_bearer: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::UsageReportGetOptionsResponse)
      end
      def get_options(
        # Query param: Options (dimensions and metrics) for a given product. If none
        # specified, all products will be returned.
        product: nil,
        # Header param: Authenticates the request with your Telnyx API V2 KEY
        authorization_bearer: nil,
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
