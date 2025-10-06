# frozen_string_literal: true

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class BatchDetailRecords
          class Voice
            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams} for
            # more details.
            #
            # Creates a new CDR report request with the specified filters
            #
            # @overload create(end_time:, start_time:, call_types: nil, connections: nil, fields: nil, filters: nil, include_all_metadata: nil, managed_accounts: nil, record_types: nil, report_name: nil, select_all_managed_accounts: nil, source: nil, timezone: nil, request_options: {})
            #
            # @param end_time [Time] End time in ISO format
            #
            # @param start_time [Time] Start time in ISO format
            #
            # @param call_types [Array<Integer>] List of call types to filter by (Inbound = 1, Outbound = 2)
            #
            # @param connections [Array<Integer>] List of connections to filter by
            #
            # @param fields [Array<String>] Set of fields to include in the report
            #
            # @param filters [Array<Telnyx::Models::Legacy::Reporting::Filter>] List of filters to apply
            #
            # @param include_all_metadata [Boolean] Whether to include all metadata
            #
            # @param managed_accounts [Array<String>] List of managed accounts to include
            #
            # @param record_types [Array<Integer>] List of record types to filter by (Complete = 1, Incomplete = 2, Errors = 3)
            #
            # @param report_name [String] Name of the report
            #
            # @param select_all_managed_accounts [Boolean] Whether to select all managed accounts
            #
            # @param source [String] Source of the report. Valid values: calls (default), call-control, fax-api, webr
            #
            # @param timezone [String] Timezone for the report
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams
            def create(params)
              parsed, options = Telnyx::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "legacy/reporting/batch_detail_records/voice",
                body: parsed,
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse,
                options: options
              )
            end

            # Retrieves a specific CDR report request by ID
            #
            # @overload retrieve(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceRetrieveResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceRetrieveParams
            def retrieve(id, params = {})
              @client.request(
                method: :get,
                path: ["legacy/reporting/batch_detail_records/voice/%1$s", id],
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceRetrieveResponse,
                options: params[:request_options]
              )
            end

            # Retrieves all CDR report requests for the authenticated user
            #
            # @overload list(request_options: {})
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListParams
            def list(params = {})
              @client.request(
                method: :get,
                path: "legacy/reporting/batch_detail_records/voice",
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse,
                options: params[:request_options]
              )
            end

            # Deletes a specific CDR report request by ID
            #
            # @overload delete(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceDeleteResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceDeleteParams
            def delete(id, params = {})
              @client.request(
                method: :delete,
                path: ["legacy/reporting/batch_detail_records/voice/%1$s", id],
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceDeleteResponse,
                options: params[:request_options]
              )
            end

            # Retrieves all available fields that can be used in CDR reports
            #
            # @overload retrieve_fields(request_options: {})
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceRetrieveFieldsResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceRetrieveFieldsParams
            def retrieve_fields(params = {})
              @client.request(
                method: :get,
                path: "legacy/reporting/batch_detail_records/voice/fields",
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceRetrieveFieldsResponse,
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
