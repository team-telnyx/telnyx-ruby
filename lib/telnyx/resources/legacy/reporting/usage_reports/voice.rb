# frozen_string_literal: true

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class UsageReports
          class Voice
            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::Legacy::Reporting::UsageReports::VoiceCreateParams} for more
            # details.
            #
            # Creates a new legacy usage V2 CDR report request with the specified filters
            #
            # @overload create(end_time:, start_time:, aggregation_type: nil, connections: nil, managed_accounts: nil, product_breakdown: nil, select_all_managed_accounts: nil, request_options: {})
            #
            # @param end_time [Time] End time in ISO format
            #
            # @param start_time [Time] Start time in ISO format
            #
            # @param aggregation_type [Integer] Aggregation type: All = 0, By Connections = 1, By Tags = 2, By Billing Group = 3
            #
            # @param connections [Array<Integer>] List of connections to filter by
            #
            # @param managed_accounts [Array<String>] List of managed accounts to include
            #
            # @param product_breakdown [Integer] Product breakdown type: No breakdown = 0, DID vs Toll-free = 1, Country = 2, DID
            #
            # @param select_all_managed_accounts [Boolean] Whether to select all managed accounts
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::UsageReports::VoiceCreateResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::VoiceCreateParams
            def create(params)
              parsed, options = Telnyx::Legacy::Reporting::UsageReports::VoiceCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "legacy/reporting/usage_reports/voice",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: Telnyx::Models::Legacy::Reporting::UsageReports::VoiceCreateResponse,
                options: options
              )
            end

            # Fetch single cdr usage report by id.
            #
            # @overload retrieve(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::UsageReports::VoiceRetrieveResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::VoiceRetrieveParams
            def retrieve(id, params = {})
              @client.request(
                method: :get,
                path: ["legacy/reporting/usage_reports/voice/%1$s", id],
                model: Telnyx::Models::Legacy::Reporting::UsageReports::VoiceRetrieveResponse,
                options: params[:request_options]
              )
            end

            # Fetch all previous requests for cdr usage reports.
            #
            # @overload list(page: nil, per_page: nil, request_options: {})
            #
            # @param page [Integer] Page number
            #
            # @param per_page [Integer] Size of the page
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListParams
            def list(params = {})
              parsed, options = Telnyx::Legacy::Reporting::UsageReports::VoiceListParams.dump_request(params)
              @client.request(
                method: :get,
                path: "legacy/reporting/usage_reports/voice",
                query: parsed,
                model: Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse,
                options: options
              )
            end

            # Deletes a specific V2 legacy usage CDR report request by ID
            #
            # @overload delete(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::UsageReports::VoiceDeleteResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::UsageReports::VoiceDeleteParams
            def delete(id, params = {})
              @client.request(
                method: :delete,
                path: ["legacy/reporting/usage_reports/voice/%1$s", id],
                model: Telnyx::Models::Legacy::Reporting::UsageReports::VoiceDeleteResponse,
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
