# typed: strong

module Telnyx
  module Models
    class UsageReportListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::UsageReportListParams, Telnyx::Internal::AnyHash)
        end

      # Breakout by specified product dimensions
      sig { returns(T::Array[String]) }
      attr_accessor :dimensions

      # Specified product usage values
      sig { returns(T::Array[String]) }
      attr_accessor :metrics

      # Telnyx product
      sig { returns(String) }
      attr_accessor :product

      # A more user-friendly way to specify the timespan you want to filter by. More
      # options can be found in the Telnyx API Reference docs.
      sig { returns(T.nilable(String)) }
      attr_reader :date_range

      sig { params(date_range: String).void }
      attr_writer :date_range

      # The end date for the time range you are interested in. The maximum time range is
      # 31 days. Format: YYYY-MM-DDTHH:mm:ssZ
      sig { returns(T.nilable(String)) }
      attr_reader :end_date

      sig { params(end_date: String).void }
      attr_writer :end_date

      # Filter records on dimensions
      sig { returns(T.nilable(String)) }
      attr_reader :filter

      sig { params(filter: String).void }
      attr_writer :filter

      # Specify the response format (csv or json). JSON is returned by default, even if
      # not specified.
      sig do
        returns(T.nilable(Telnyx::UsageReportListParams::Format::OrSymbol))
      end
      attr_reader :format_

      sig do
        params(format_: Telnyx::UsageReportListParams::Format::OrSymbol).void
      end
      attr_writer :format_

      # Return the aggregations for all Managed Accounts under the user making the
      # request.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :managed_accounts

      sig { params(managed_accounts: T::Boolean).void }
      attr_writer :managed_accounts

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Specifies the sort order for results
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :sort

      sig { params(sort: T::Array[String]).void }
      attr_writer :sort

      # The start date for the time range you are interested in. The maximum time range
      # is 31 days. Format: YYYY-MM-DDTHH:mm:ssZ
      sig { returns(T.nilable(String)) }
      attr_reader :start_date

      sig { params(start_date: String).void }
      attr_writer :start_date

      # Authenticates the request with your Telnyx API V2 KEY
      sig { returns(T.nilable(String)) }
      attr_reader :authorization_bearer

      sig { params(authorization_bearer: String).void }
      attr_writer :authorization_bearer

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
          page_number: Integer,
          page_size: Integer,
          sort: T::Array[String],
          start_date: String,
          authorization_bearer: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Breakout by specified product dimensions
        dimensions:,
        # Specified product usage values
        metrics:,
        # Telnyx product
        product:,
        # A more user-friendly way to specify the timespan you want to filter by. More
        # options can be found in the Telnyx API Reference docs.
        date_range: nil,
        # The end date for the time range you are interested in. The maximum time range is
        # 31 days. Format: YYYY-MM-DDTHH:mm:ssZ
        end_date: nil,
        # Filter records on dimensions
        filter: nil,
        # Specify the response format (csv or json). JSON is returned by default, even if
        # not specified.
        format_: nil,
        # Return the aggregations for all Managed Accounts under the user making the
        # request.
        managed_accounts: nil,
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results
        sort: nil,
        # The start date for the time range you are interested in. The maximum time range
        # is 31 days. Format: YYYY-MM-DDTHH:mm:ssZ
        start_date: nil,
        # Authenticates the request with your Telnyx API V2 KEY
        authorization_bearer: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            dimensions: T::Array[String],
            metrics: T::Array[String],
            product: String,
            date_range: String,
            end_date: String,
            filter: String,
            format_: Telnyx::UsageReportListParams::Format::OrSymbol,
            managed_accounts: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            sort: T::Array[String],
            start_date: String,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Specify the response format (csv or json). JSON is returned by default, even if
      # not specified.
      module Format
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::UsageReportListParams::Format) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CSV = T.let(:csv, Telnyx::UsageReportListParams::Format::TaggedSymbol)
        JSON = T.let(:json, Telnyx::UsageReportListParams::Format::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::UsageReportListParams::Format::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
