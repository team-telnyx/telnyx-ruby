# frozen_string_literal: true

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class BatchDetailRecords
          class SpeechToText
            # Creates a new Speech to Text batch report request with the specified filters
            #
            # @overload create(end_date:, start_date:, request_options: {})
            #
            # @param end_date [Time] End date in ISO format with timezone (date range must be up to one month)
            #
            # @param start_date [Time] Start date in ISO format with timezone
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextCreateResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextCreateParams
            def create(params)
              parsed, options =
                Telnyx::Legacy::Reporting::BatchDetailRecords::SpeechToTextCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "legacy/reporting/batch_detail_records/speech_to_text",
                body: parsed,
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextCreateResponse,
                options: options
              )
            end

            # Retrieves a specific Speech to Text batch report request by ID
            #
            # @overload retrieve(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextRetrieveResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextRetrieveParams
            def retrieve(id, params = {})
              @client.request(
                method: :get,
                path: ["legacy/reporting/batch_detail_records/speech_to_text/%1$s", id],
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextRetrieveResponse,
                options: params[:request_options]
              )
            end

            # Retrieves all Speech to Text batch report requests for the authenticated user
            #
            # @overload list(request_options: {})
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextListResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextListParams
            def list(params = {})
              @client.request(
                method: :get,
                path: "legacy/reporting/batch_detail_records/speech_to_text",
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextListResponse,
                options: params[:request_options]
              )
            end

            # Deletes a specific Speech to Text batch report request by ID
            #
            # @overload delete(id, request_options: {})
            #
            # @param id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse]
            #
            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteParams
            def delete(id, params = {})
              @client.request(
                method: :delete,
                path: ["legacy/reporting/batch_detail_records/speech_to_text/%1$s", id],
                model: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse,
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
