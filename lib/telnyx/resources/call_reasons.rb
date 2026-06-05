# frozen_string_literal: true

module Telnyx
  module Resources
    # Static reference values the API accepts: call reasons, document types, rejection
    # types.
    class CallReasons
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CallReasonListParams} for more details.
      #
      # Telnyx maintains a library of pre-vetted call-reason phrases (e.g. "Appointment
      # reminders", "Billing inquiries") that carry through DIR vetting smoothly. You
      # can use any string that fits your use case in `DirCreateRequest.call_reasons`,
      # but matching one of these reduces the chance the vetting team flags the phrasing
      # for clarification.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
      #
      # @param page_size [Integer] Items per page. Default `100` for this endpoint (the call-reason library is smal
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::CallReasonListResponse>]
      #
      # @see Telnyx::Models::CallReasonListParams
      def list(params = {})
        parsed, options = Telnyx::CallReasonListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "call_reasons",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::CallReasonListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CallReasonValidateParams} for more details.
      #
      # Check up to 10 candidate `call_reasons` strings against Telnyx's vetting
      # heuristics before sending them on a DIR create or update. The endpoint flags
      # strings that are likely to be rejected during vetting (too generic, banned
      # phrases, length issues, etc.) so you can fix them up front.
      #
      # @overload validate(body:, request_options: {})
      #
      # @param body [Array<String>] **Bare JSON array** of candidate call-reason strings (NOT an object — there is n
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CallReasonValidateResponse]
      #
      # @see Telnyx::Models::CallReasonValidateParams
      def validate(params)
        parsed, options = Telnyx::CallReasonValidateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "call_reasons/validate",
          body: parsed[:body],
          model: Telnyx::Models::CallReasonValidateResponse,
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
