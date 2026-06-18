# frozen_string_literal: true

module Telnyx
  module Resources
    class Dir
      # Associate phone numbers with a verified DIR so calls from those numbers carry
      # the DIR's display identity.
      class PhoneNumbers
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Dir::PhoneNumberListParams} for more details.
        #
        # List the phone numbers registered under a DIR. The enterprise is resolved
        # server-side from the DIR id.
        #
        # @overload list(dir_id, page_number: nil, page_size: nil, status: nil, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
        #
        # @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
        #
        # @param status [Symbol, Telnyx::Models::Dir::DirPhoneNumberStatus] Filter by phone-number status.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Dir::DirPhoneNumber>]
        #
        # @see Telnyx::Models::Dir::PhoneNumberListParams
        def list(dir_id, params = {})
          parsed, options = Telnyx::Dir::PhoneNumberListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["dir/%1$s/phone_numbers", dir_id],
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Dir::DirPhoneNumber,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Dir::PhoneNumberAddParams} for more details.
        #
        # Register phone numbers under a DIR. The enterprise is resolved server-side from
        # the DIR id. Same body, failure modes, and batch semantics whichever path form
        # you use.
        #
        # **Pricing:** This is a billable action. See https://telnyx.com/pricing/numbers
        # for current pricing.
        #
        # @overload add(dir_id, documents:, phone_numbers:, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param documents [Array<Telnyx::Models::Document>] Supporting documents covering this batch. At least one entry with `document_type
        #
        # @param phone_numbers [Array<String>] 1–15 phone numbers in E.164 format. 10-digit US numbers are auto-prefixed with `
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::PhoneNumberAddResponse]
        #
        # @see Telnyx::Models::Dir::PhoneNumberAddParams
        def add(dir_id, params)
          parsed, options = Telnyx::Dir::PhoneNumberAddParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["dir/%1$s/phone_numbers", dir_id],
            body: parsed,
            model: Telnyx::Models::Dir::PhoneNumberAddResponse,
            options: options
          )
        end

        # Deregister phone numbers from a DIR. The enterprise is resolved server-side from
        # the DIR id. Returns a partial-success envelope.
        #
        # @overload remove(dir_id, phone_numbers:, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param phone_numbers [Array<String>]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::PhoneNumberRemoveResponse]
        #
        # @see Telnyx::Models::Dir::PhoneNumberRemoveParams
        def remove(dir_id, params)
          parsed, options = Telnyx::Dir::PhoneNumberRemoveParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["dir/%1$s/phone_numbers", dir_id],
            body: parsed,
            model: Telnyx::Models::Dir::PhoneNumberRemoveResponse,
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
