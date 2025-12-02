# frozen_string_literal: true

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class UsageReports
          class NumberLookup
            # Submit a new telco data usage report
            #
            # @overload create(aggregation_type: nil, end_date: nil, managed_accounts: nil, start_date: nil, request_options: {})
            #
            # @param aggregation_type [Symbol, Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType] Type of aggregation for the report
            #
            # @param end_date [Date] End date for the usage report
            #
            # @param managed_accounts [Array<String>] List of managed accounts to include in the report
            #
            # @param start_date [Date] Start date for the usage report
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupCreateResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupCreateParams
            def create(params = {})
              parsed, options = Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "legacy/reporting/usage_reports/number_lookup",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupCreateResponse,
                options: options
              )
            end

            # Retrieve a specific telco data usage report by its ID
            #
            # @overload retrieve(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupRetrieveResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupRetrieveParams
            def retrieve(id, params = {})
              @client.request(
                method: :get,
                path: ["legacy/reporting/usage_reports/number_lookup/%1$s", id],
                model: Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupRetrieveResponse,
                options: params[:request_options]
              )
            end

            # Retrieve a paginated list of telco data usage reports
            #
            # @overload list(request_options: {})
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListParams
            def list(params = {})
              @client.request(
                method: :get,
                path: "legacy/reporting/usage_reports/number_lookup",
                model: Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse,
                options: params[:request_options]
              )
            end

            # Delete a specific telco data usage report by its ID
            #
            # @overload delete(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupDeleteParams
            def delete(id, params = {})
              @client.request(
                method: :delete,
                path: ["legacy/reporting/usage_reports/number_lookup/%1$s", id],
                model: NilClass,
                options: params[:request_options]
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
    end
  end
end
