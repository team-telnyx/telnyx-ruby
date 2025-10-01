# frozen_string_literal: true

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class BatchDetailRecords
          class Messaging
            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams}
            # for more details.
            #
            # Creates a new MDR detailed report request with the specified filters
            #
            # @overload create(end_time:, start_time:, connections: nil, directions: nil, filters: nil, include_message_body: nil, managed_accounts: nil, profiles: nil, record_types: nil, report_name: nil, select_all_managed_accounts: nil, timezone: nil, request_options: {})
            #
            # @param end_time [Time] End time in ISO format. Note: If end time includes the last 4 hours, some MDRs m
            #
            # @param start_time [Time] Start time in ISO format
            #
            # @param connections [Array<Integer>] List of connections to filter by
            #
            # @param directions [Array<Integer>] List of directions to filter by (Inbound = 1, Outbound = 2)
            #
            # @param filters [Array<Telnyx::Models::Legacy::Reporting::Filter>] List of filters to apply
            #
            # @param include_message_body [Boolean] Whether to include message body in the report
            #
            # @param managed_accounts [Array<String>] List of managed accounts to include
            #
            # @param profiles [Array<String>] List of messaging profile IDs to filter by
            #
            # @param record_types [Array<Integer>] List of record types to filter by (Complete = 1, Incomplete = 2, Errors = 3)
            #
            # @param report_name [String] Name of the report
            #
            # @param select_all_managed_accounts [Boolean] Whether to select all managed accounts
            #
            # @param timezone [String] Timezone for the report
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams
            def create(params)
              parsed, options =
                Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "legacy/reporting/batch_detail_records/messaging",
                body: parsed,
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateResponse,
                options: options
              )
            end

            # Retrieves a specific MDR detailed report request by ID
            #
            # @overload retrieve(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingRetrieveResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingRetrieveParams
            def retrieve(id, params = {})
              @client.request(
                method: :get,
                path: ["legacy/reporting/batch_detail_records/messaging/%1$s", id],
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingRetrieveResponse,
                options: params[:request_options]
              )
            end

            # Retrieves all MDR detailed report requests for the authenticated user
            #
            # @overload list(request_options: {})
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingListResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingListParams
            def list(params = {})
              @client.request(
                method: :get,
                path: "legacy/reporting/batch_detail_records/messaging",
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingListResponse,
                options: params[:request_options]
              )
            end

            # Deletes a specific MDR detailed report request by ID
            #
            # @overload delete(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteParams
            def delete(id, params = {})
              @client.request(
                method: :delete,
                path: ["legacy/reporting/batch_detail_records/messaging/%1$s", id],
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse,
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
