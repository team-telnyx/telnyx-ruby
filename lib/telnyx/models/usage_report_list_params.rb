# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UsageReports#list
    class UsageReportListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute dimensions
      #   Breakout by specified product dimensions
      #
      #   @return [Array<String>]
      required :dimensions, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute metrics
      #   Specified product usage values
      #
      #   @return [Array<String>]
      required :metrics, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute product
      #   Telnyx product
      #
      #   @return [String]
      required :product, String

      # @!attribute date_range
      #   A more user-friendly way to specify the timespan you want to filter by. More
      #   options can be found in the Telnyx API Reference docs.
      #
      #   @return [String, nil]
      optional :date_range, String

      # @!attribute end_date
      #   The end date for the time range you are interested in. The maximum time range is
      #   31 days. Format: YYYY-MM-DDTHH:mm:ssZ
      #
      #   @return [String, nil]
      optional :end_date, String

      # @!attribute filter
      #   Filter records on dimensions
      #
      #   @return [String, nil]
      optional :filter, String

      # @!attribute format_
      #   Specify the response format (csv or json). JSON is returned by default, even if
      #   not specified.
      #
      #   @return [Symbol, Telnyx::Models::UsageReportListParams::Format, nil]
      optional :format_, enum: -> { Telnyx::UsageReportListParams::Format }

      # @!attribute managed_accounts
      #   Return the aggregations for all Managed Accounts under the user making the
      #   request.
      #
      #   @return [Boolean, nil]
      optional :managed_accounts, Telnyx::Internal::Type::Boolean

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::UsageReportListParams::Page, nil]
      optional :page, -> { Telnyx::UsageReportListParams::Page }

      # @!attribute sort
      #   Specifies the sort order for results
      #
      #   @return [Array<String>, nil]
      optional :sort, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute start_date
      #   The start date for the time range you are interested in. The maximum time range
      #   is 31 days. Format: YYYY-MM-DDTHH:mm:ssZ
      #
      #   @return [String, nil]
      optional :start_date, String

      # @!attribute authorization_bearer
      #   Authenticates the request with your Telnyx API V2 KEY
      #
      #   @return [String, nil]
      optional :authorization_bearer, String

      # @!method initialize(dimensions:, metrics:, product:, date_range: nil, end_date: nil, filter: nil, format_: nil, managed_accounts: nil, page: nil, sort: nil, start_date: nil, authorization_bearer: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UsageReportListParams} for more details.
      #
      #   @param dimensions [Array<String>] Breakout by specified product dimensions
      #
      #   @param metrics [Array<String>] Specified product usage values
      #
      #   @param product [String] Telnyx product
      #
      #   @param date_range [String] A more user-friendly way to specify the timespan you want to filter by. More opt
      #
      #   @param end_date [String] The end date for the time range you are interested in. The maximum time range is
      #
      #   @param filter [String] Filter records on dimensions
      #
      #   @param format_ [Symbol, Telnyx::Models::UsageReportListParams::Format] Specify the response format (csv or json). JSON is returned by default, even if
      #
      #   @param managed_accounts [Boolean] Return the aggregations for all Managed Accounts under the user making the reque
      #
      #   @param page [Telnyx::Models::UsageReportListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param sort [Array<String>] Specifies the sort order for results
      #
      #   @param start_date [String] The start date for the time range you are interested in. The maximum time range
      #
      #   @param authorization_bearer [String] Authenticates the request with your Telnyx API V2 KEY
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Specify the response format (csv or json). JSON is returned by default, even if
      # not specified.
      module Format
        extend Telnyx::Internal::Type::Enum

        CSV = :csv
        JSON = :json

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer]
        #   @param size [Integer]
      end
    end
  end
end
