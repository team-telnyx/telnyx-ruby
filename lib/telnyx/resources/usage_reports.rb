# frozen_string_literal: true

module Telnyx
  module Resources
    class UsageReports
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::UsageReportListParams} for more details.
      #
      # Get Telnyx usage data by product, broken out by the specified dimensions
      #
      # @overload list(dimensions:, metrics:, product:, date_range: nil, end_date: nil, filter: nil, format_: nil, managed_accounts: nil, page_number: nil, page_size: nil, sort: nil, start_date: nil, authorization_bearer: nil, request_options: {})
      #
      # @param dimensions [Array<String>] Query param: Breakout by specified product dimensions
      #
      # @param metrics [Array<String>] Query param: Specified product usage values
      #
      # @param product [String] Query param: Telnyx product
      #
      # @param date_range [String] Query param: A more user-friendly way to specify the timespan you want to filter
      #
      # @param end_date [String] Query param: The end date for the time range you are interested in. The maximum
      #
      # @param filter [String] Query param: Filter records on dimensions
      #
      # @param format_ [Symbol, Telnyx::Models::UsageReportListParams::Format] Query param: Specify the response format (csv or json). JSON is returned by defa
      #
      # @param managed_accounts [Boolean] Query param: Return the aggregations for all Managed Accounts under the user mak
      #
      # @param page_number [Integer] Query param:
      #
      # @param page_size [Integer] Query param:
      #
      # @param sort [Array<String>] Query param: Specifies the sort order for results
      #
      # @param start_date [String] Query param: The start date for the time range you are interested in. The maximu
      #
      # @param authorization_bearer [String] Header param: Authenticates the request with your Telnyx API V2 KEY
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Hash{Symbol=>Object}>]
      #
      # @see Telnyx::Models::UsageReportListParams
      def list(params)
        parsed, options = Telnyx::UsageReportListParams.dump_request(params)
        query_params =
          [
            :dimensions,
            :metrics,
            :product,
            :date_range,
            :end_date,
            :filter,
            :format_,
            :managed_accounts,
            :page_number,
            :page_size,
            :sort,
            :start_date
          ]
        @client.request(
          method: :get,
          path: "usage_reports",
          query: parsed.slice(*query_params).transform_keys(
            format_: "format",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          headers: parsed.except(*query_params),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::UsageReportGetOptionsParams} for more details.
      #
      # Get the Usage Reports options for querying usage, including the products
      # available and their respective metrics and dimensions
      #
      # @overload get_options(product: nil, authorization_bearer: nil, request_options: {})
      #
      # @param product [String] Query param: Options (dimensions and metrics) for a given product. If none speci
      #
      # @param authorization_bearer [String] Header param: Authenticates the request with your Telnyx API V2 KEY
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::UsageReportGetOptionsResponse]
      #
      # @see Telnyx::Models::UsageReportGetOptionsParams
      def get_options(params = {})
        parsed, options = Telnyx::UsageReportGetOptionsParams.dump_request(params)
        query_params = [:product]
        @client.request(
          method: :get,
          path: "usage_reports/options",
          query: parsed.slice(*query_params),
          headers: parsed.except(*query_params),
          model: Telnyx::Models::UsageReportGetOptionsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
