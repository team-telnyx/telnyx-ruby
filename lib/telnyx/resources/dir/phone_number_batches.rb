# frozen_string_literal: true

module Telnyx
  module Resources
    class Dir
      # Phone numbers are submitted to Telnyx for vetting in batches. Batches group all
      # numbers added in a single request under the same Letter of Authorization.
      class PhoneNumberBatches
        # Get a single phone-number batch by id. The enterprise is resolved server-side
        # from the DIR id.
        #
        # @overload retrieve(batch_id, dir_id:, request_options: {})
        #
        # @param batch_id [String] The batch id (lowercase UUID).
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse]
        #
        # @see Telnyx::Models::Dir::PhoneNumberBatchRetrieveParams
        def retrieve(batch_id, params)
          parsed, options = Telnyx::Dir::PhoneNumberBatchRetrieveParams.dump_request(params)
          dir_id =
            parsed.delete(:dir_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["dir/%1$s/phone_number_batches/%2$s", dir_id, batch_id],
            model: Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Dir::PhoneNumberBatchListParams} for more details.
        #
        # List the phone-number batches submitted under a DIR. The enterprise is resolved
        # server-side from the DIR id.
        #
        # @overload list(dir_id, filter_status: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param filter_status [Symbol, Telnyx::Models::Dir::PhoneNumberBatchListParams::FilterStatus] Restrict to batches whose aggregate status equals this value.
        #
        # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
        #
        # @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Dir::PhoneNumberBatchListResponse>]
        #
        # @see Telnyx::Models::Dir::PhoneNumberBatchListParams
        def list(dir_id, params = {})
          parsed, options = Telnyx::Dir::PhoneNumberBatchListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["dir/%1$s/phone_number_batches", dir_id],
            query: query.transform_keys(
              filter_status: "filter[status]",
              page_number: "page[number]",
              page_size: "page[size]"
            ),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::Dir::PhoneNumberBatchListResponse,
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
end
