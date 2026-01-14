# frozen_string_literal: true

module Telnyx
  module Resources
    class MobilePhoneNumbers
      class Messaging
        # Retrieve a mobile phone number with messaging settings
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the type of resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse]
        #
        # @see Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["mobile_phone_numbers/%1$s/messaging", id],
            model: Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse,
            options: params[:request_options]
          )
        end

        # List mobile phone numbers with messaging settings
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer]
        # @param page_size [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::MobilePhoneNumbers::MessagingListResponse>]
        #
        # @see Telnyx::Models::MobilePhoneNumbers::MessagingListParams
        def list(params = {})
          parsed, options = Telnyx::MobilePhoneNumbers::MessagingListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "mobile_phone_numbers/messaging",
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::MobilePhoneNumbers::MessagingListResponse,
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
