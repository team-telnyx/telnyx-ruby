# frozen_string_literal: true

module Telnyx
  module Resources
    # Requirements for international numbers and porting orders
    class Requirements
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RequirementRetrieveParams} for more details.
      #
      # Returns a single document requirement record by its identifier, describing the
      # documentation needed for number-related actions. A specific requirement version
      # can be requested.
      #
      # @overload retrieve(id, version: nil, request_options: {})
      #
      # @param id [String] Uniquely identifies the requirement_type record
      #
      # @param version [Integer] Filter by requirement version number. When omitted, returns the currently-active
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RequirementRetrieveResponse]
      #
      # @see Telnyx::Models::RequirementRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Telnyx::RequirementRetrieveParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["requirements/%1$s", id],
          query: query,
          model: Telnyx::Models::RequirementRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RequirementListParams} for more details.
      #
      # List all requirements with filtering, sorting, and pagination
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, sort: nil, version: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RequirementListParams::Filter] Consolidated filter parameter for requirements (deepObject style). Originally: f
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param sort [Array<Symbol, Telnyx::Models::RequirementListParams::Sort>] Consolidated sort parameter for requirements (deepObject style). Originally: sor
      #
      # @param version [Integer] Filter by requirement version number. When omitted, returns the currently-active
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::DocReqsRequirement>]
      #
      # @see Telnyx::Models::RequirementListParams
      def list(params = {})
        parsed, options = Telnyx::RequirementListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "requirements",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::DocReqsRequirement,
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
