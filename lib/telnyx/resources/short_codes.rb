# frozen_string_literal: true

module Telnyx
  module Resources
    class ShortCodes
      # Retrieve a short code
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of the short code
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ShortCodeRetrieveResponse]
      #
      # @see Telnyx::Models::ShortCodeRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["short_codes/%1$s", id],
          model: Telnyx::Models::ShortCodeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update the settings for a specific short code. To unbind a short code from a
      # profile, set the `messaging_profile_id` to `null` or an empty string. To add or
      # update tags, include the tags field as an array of strings.
      #
      # @overload update(id, messaging_profile_id:, request_options: {})
      #
      # @param id [String] The id of the short code
      #
      # @param messaging_profile_id [String] Unique identifier for a messaging profile.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ShortCodeUpdateResponse]
      #
      # @see Telnyx::Models::ShortCodeUpdateParams
      def update(id, params)
        parsed, options = Telnyx::ShortCodeUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["short_codes/%1$s", id],
          body: parsed,
          model: Telnyx::Models::ShortCodeUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ShortCodeListParams} for more details.
      #
      # List short codes
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::ShortCodeListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[messaging_p
      #
      # @param page [Telnyx::Models::ShortCodeListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ShortCodeListResponse]
      #
      # @see Telnyx::Models::ShortCodeListParams
      def list(params = {})
        parsed, options = Telnyx::ShortCodeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "short_codes",
          query: parsed,
          model: Telnyx::Models::ShortCodeListResponse,
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
