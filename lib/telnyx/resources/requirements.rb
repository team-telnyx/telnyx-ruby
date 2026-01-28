# frozen_string_literal: true

module Telnyx
  module Resources
    class Requirements
      # Retrieve a document requirement record
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Uniquely identifies the requirement_type record
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RequirementRetrieveResponse]
      #
      # @see Telnyx::Models::RequirementRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["requirements/%1$s", id],
          model: Telnyx::Models::RequirementRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RequirementListParams} for more details.
      #
      # List all requirements with filtering, sorting, and pagination
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RequirementListParams::Filter] Consolidated filter parameter for requirements (deepObject style). Originally: f
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param sort [Array<Symbol, Telnyx::Models::RequirementListParams::Sort>] Consolidated sort parameter for requirements (deepObject style). Originally: sor
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::RequirementListResponse>]
      #
      # @see Telnyx::Models::RequirementListParams
      def list(params = {})
        parsed, options = Telnyx::RequirementListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "requirements",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::RequirementListResponse,
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
