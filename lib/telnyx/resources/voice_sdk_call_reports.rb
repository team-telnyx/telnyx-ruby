# frozen_string_literal: true

module Telnyx
  module Resources
    # Retrieve raw Voice SDK call report stats payloads for WebRTC call
    # troubleshooting.
    class VoiceSDKCallReports
      # Returns raw call report stats JSON payloads stored for the authenticated user
      # and `call_id`. The user is derived from Telnyx authentication, not from request
      # parameters.
      #
      # @overload retrieve(call_id, request_options: {})
      #
      # @param call_id [String] Call identifier used to retrieve reports owned by the authenticated user.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Telnyx::Models::VoiceSDKCallReport>]
      #
      # @see Telnyx::Models::VoiceSDKCallReportRetrieveParams
      def retrieve(call_id, params = {})
        @client.request(
          method: :get,
          path: ["voice_sdk_call_reports/%1$s", call_id],
          model: Telnyx::Internal::Type::ArrayOf[Telnyx::VoiceSDKCallReport],
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VoiceSDKCallReportListParams} for more details.
      #
      # Returns paginated raw call report stats JSON payloads stored for the
      # authenticated user. The user is derived from Telnyx authentication, not from
      # request parameters.
      #
      # @overload list(page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param sort [Symbol, Telnyx::Models::VoiceSDKCallReportListParams::Sort] Set the order of the results by creation date. `asc` and `created_at` sort oldes
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::VoiceSDKCallReport>]
      #
      # @see Telnyx::Models::VoiceSDKCallReportListParams
      def list(params = {})
        parsed, options = Telnyx::VoiceSDKCallReportListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "voice_sdk_call_reports",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::VoiceSDKCallReport,
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
