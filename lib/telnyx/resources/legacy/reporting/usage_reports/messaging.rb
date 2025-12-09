# frozen_string_literal: true

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class UsageReports
          class Messaging
            # Creates a new legacy usage V2 MDR report request with the specified filters
            #
            # @overload create(aggregation_type:, end_time: nil, managed_accounts: nil, profiles: nil, select_all_managed_accounts: nil, start_time: nil, request_options: {})
            #
            # @param aggregation_type [Integer] Aggregation type: No aggregation = 0, By Messaging Profile = 1, By Tags = 2
            #
            # @param end_time [Time]
            #
            # @param managed_accounts [Array<String>] List of managed accounts to include
            #
            # @param profiles [Array<String>] List of messaging profile IDs to filter by
            #
            # @param select_all_managed_accounts [Boolean]
            #
            # @param start_time [Time]
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::UsageReports::MessagingCreateResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::MessagingCreateParams
            def create(params)
              parsed, options = Telnyx::Legacy::Reporting::UsageReports::MessagingCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "legacy/reporting/usage_reports/messaging",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: Telnyx::Models::Legacy::Reporting::UsageReports::MessagingCreateResponse,
                options: options
              )
            end

            # Fetch single MDR usage report by id.
            #
            # @overload retrieve(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::UsageReports::MessagingRetrieveResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::MessagingRetrieveParams
            def retrieve(id, params = {})
              @client.request(
                method: :get,
                path: ["legacy/reporting/usage_reports/messaging/%1$s", id],
                model: Telnyx::Models::Legacy::Reporting::UsageReports::MessagingRetrieveResponse,
                options: params[:request_options]
              )
            end

            # Fetch all previous requests for MDR usage reports.
            #
            # @overload list(page: nil, per_page: nil, request_options: {})
            #
            # @param page [Integer] Page number
            #
            # @param per_page [Integer] Size of the page
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Internal::PerPagePagination<Telnyx::Models::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy>]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListParams
            def list(params = {})
              parsed, options = Telnyx::Legacy::Reporting::UsageReports::MessagingListParams.dump_request(params)
              @client.request(
                method: :get,
                path: "legacy/reporting/usage_reports/messaging",
                query: parsed,
                page: Telnyx::Internal::PerPagePagination,
                model: Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy,
                options: options
              )
            end

            # Deletes a specific V2 legacy usage MDR report request by ID
            #
            # @overload delete(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteParams
            def delete(id, params = {})
              @client.request(
                method: :delete,
                path: ["legacy/reporting/usage_reports/messaging/%1$s", id],
                model: Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse,
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
