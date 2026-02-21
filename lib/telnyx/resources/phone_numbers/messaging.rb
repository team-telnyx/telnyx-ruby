# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumbers
      class Messaging
        # Retrieve a phone number with messaging settings
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the type of resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::MessagingRetrieveResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::MessagingRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["phone_numbers/%1$s/messaging", id],
            model: Telnyx::Models::PhoneNumbers::MessagingRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumbers::MessagingUpdateParams} for more details.
        #
        # Update the messaging profile and/or messaging product of a phone number
        #
        # @overload update(id, messaging_product: nil, messaging_profile_id: nil, tags: nil, request_options: {})
        #
        # @param id [String] The phone number to update.
        #
        # @param messaging_product [String] Configure the messaging product for this number:
        #
        # @param messaging_profile_id [String] Configure the messaging profile this phone number is assigned to:
        #
        # @param tags [Array<String>] Tags to set on this phone number.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::MessagingUpdateResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::MessagingUpdateParams
        def update(id, params = {})
          parsed, options = Telnyx::PhoneNumbers::MessagingUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["phone_numbers/%1$s/messaging", id],
            body: parsed,
            model: Telnyx::Models::PhoneNumbers::MessagingUpdateResponse,
            options: options
          )
        end

        # List phone numbers with messaging settings
        #
        # @overload list(filter_messaging_profile_id: nil, filter_phone_number: nil, filter_phone_number_contains: nil, filter_type: nil, page_number: nil, page_size: nil, sort_phone_number: nil, request_options: {})
        #
        # @param filter_messaging_profile_id [String] Filter by messaging profile ID.
        #
        # @param filter_phone_number [String] Filter by exact phone number (supports comma-separated list).
        #
        # @param filter_phone_number_contains [String] Filter by phone number substring.
        #
        # @param filter_type [Symbol, Telnyx::Models::PhoneNumbers::MessagingListParams::FilterType] Filter by phone number type.
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param sort_phone_number [Symbol, Telnyx::Models::PhoneNumbers::MessagingListParams::SortPhoneNumber] Sort by phone number.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::PhoneNumberWithMessagingSettings>]
        #
        # @see Telnyx::Models::PhoneNumbers::MessagingListParams
        def list(params = {})
          parsed, options = Telnyx::PhoneNumbers::MessagingListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "phone_numbers/messaging",
            query: parsed.transform_keys(
              filter_messaging_profile_id: "filter[messaging_profile_id]",
              filter_phone_number: "filter[phone_number]",
              filter_phone_number_contains: "filter[phone_number][contains]",
              filter_type: "filter[type]",
              page_number: "page[number]",
              page_size: "page[size]",
              sort_phone_number: "sort[phone_number]"
            ),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::PhoneNumberWithMessagingSettings,
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
