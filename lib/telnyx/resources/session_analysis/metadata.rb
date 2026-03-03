# frozen_string_literal: true

module Telnyx
  module Resources
    class SessionAnalysis
      # Analyze voice AI sessions, costs, and event hierarchies across Telnyx products.
      class Metadata
        # Returns all available record types and supported query parameters for session
        # analysis.
        #
        # @overload retrieve(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse]
        #
        # @see Telnyx::Models::SessionAnalysis::MetadataRetrieveParams
        def retrieve(params = {})
          @client.request(
            method: :get,
            path: "session_analysis/metadata",
            model: Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Returns detailed metadata for a specific record type, including relationships
        # and examples.
        #
        # @overload retrieve_record_type(record_type, request_options: {})
        #
        # @param record_type [String] The record type identifier (e.g. "call-control").
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse]
        #
        # @see Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeParams
        def retrieve_record_type(record_type, params = {})
          @client.request(
            method: :get,
            path: ["session_analysis/metadata/%1$s", record_type],
            model: Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse,
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
