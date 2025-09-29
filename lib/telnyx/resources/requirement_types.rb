# frozen_string_literal: true

module Telnyx
  module Resources
    class RequirementTypes
      # Retrieve a requirement type by id
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Uniquely identifies the requirement_type record
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RequirementTypeRetrieveResponse]
      #
      # @see Telnyx::Models::RequirementTypeRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["requirement_types/%1$s", id],
          model: Telnyx::Models::RequirementTypeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RequirementTypeListParams} for more details.
      #
      # List all requirement types ordered by created_at descending
      #
      # @overload list(filter: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RequirementTypeListParams::Filter] Consolidated filter parameter for requirement types (deepObject style). Original
      #
      # @param sort [Array<Symbol, Telnyx::Models::RequirementTypeListParams::Sort>] Consolidated sort parameter for requirement types (deepObject style). Originally
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RequirementTypeListResponse]
      #
      # @see Telnyx::Models::RequirementTypeListParams
      def list(params = {})
        parsed, options = Telnyx::RequirementTypeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "requirement_types",
          query: parsed,
          model: Telnyx::Models::RequirementTypeListResponse,
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
