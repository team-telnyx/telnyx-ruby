# frozen_string_literal: true

module Telnyx
  module Resources
    class Reputation
      # Phone-number reputation monitoring (spam-score lookup and tracking).
      class Numbers
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Reputation::NumberRetrieveParams} for more details.
        #
        # Convenience alias for
        # `GET /v2/enterprises/{enterprise_id}/reputation/numbers/{phone_number}`.
        #
        # @overload retrieve(phone_number, fresh: nil, request_options: {})
        #
        # @param phone_number [String] Phone number in E.164 format (`+1NPANXXXXXX` for US/CA). The leading `+` MUST be
        #
        # @param fresh [Boolean] When true, fetches fresh reputation data (incurs API cost). When false (default)
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Reputation::NumberRetrieveResponse]
        #
        # @see Telnyx::Models::Reputation::NumberRetrieveParams
        def retrieve(phone_number, params = {})
          parsed, options = Telnyx::Reputation::NumberRetrieveParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["reputation/numbers/%1$s", phone_number],
            query: query,
            model: Telnyx::Models::Reputation::NumberRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Reputation::NumberListParams} for more details.
        #
        # Convenience alias for `GET /v2/enterprises/{enterprise_id}/reputation/numbers`
        # that returns numbers across every enterprise you own. Useful when you don't want
        # to look up the enterprise id first.
        #
        # @overload list(page_number: nil, page_size: nil, phone_number: nil, request_options: {})
        #
        # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
        #
        # @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
        #
        # @param phone_number [String] Filter by specific phone number (E.164 format).
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Reputation::NumberListResponse>]
        #
        # @see Telnyx::Models::Reputation::NumberListParams
        def list(params = {})
          parsed, options = Telnyx::Reputation::NumberListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "reputation/numbers",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::Reputation::NumberListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Reputation::NumberDeleteParams} for more details.
        #
        # Convenience alias for
        # `DELETE /v2/enterprises/{enterprise_id}/reputation/numbers/{phone_number}`.
        #
        # @overload delete(phone_number, request_options: {})
        #
        # @param phone_number [String] Phone number in E.164 format (`+1NPANXXXXXX` for US/CA). The leading `+` MUST be
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Reputation::NumberDeleteParams
        def delete(phone_number, params = {})
          @client.request(
            method: :delete,
            path: ["reputation/numbers/%1$s", phone_number],
            model: NilClass,
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
