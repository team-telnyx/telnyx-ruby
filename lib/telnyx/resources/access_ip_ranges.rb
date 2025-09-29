# frozen_string_literal: true

module Telnyx
  module Resources
    class AccessIPRanges
      # Create new Access IP Range
      #
      # @overload create(cidr_block:, description: nil, request_options: {})
      #
      # @param cidr_block [String]
      # @param description [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AccessIPRange]
      #
      # @see Telnyx::Models::AccessIPRangeCreateParams
      def create(params)
        parsed, options = Telnyx::AccessIPRangeCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "access_ip_ranges",
          body: parsed,
          model: Telnyx::AccessIPRange,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AccessIPRangeListParams} for more details.
      #
      # List all Access IP Ranges
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::AccessIPRangeListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[cidr_block]
      #
      # @param page [Telnyx::Models::AccessIPRangeListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AccessIPRangeListResponse]
      #
      # @see Telnyx::Models::AccessIPRangeListParams
      def list(params = {})
        parsed, options = Telnyx::AccessIPRangeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "access_ip_ranges",
          query: parsed,
          model: Telnyx::Models::AccessIPRangeListResponse,
          options: options
        )
      end

      # Delete access IP ranges
      #
      # @overload delete(access_ip_range_id, request_options: {})
      #
      # @param access_ip_range_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AccessIPRange]
      #
      # @see Telnyx::Models::AccessIPRangeDeleteParams
      def delete(access_ip_range_id, params = {})
        @client.request(
          method: :delete,
          path: ["access_ip_ranges/%1$s", access_ip_range_id],
          model: Telnyx::AccessIPRange,
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
