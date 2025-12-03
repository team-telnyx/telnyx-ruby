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
        # @overload update(id, messaging_product: nil, messaging_profile_id: nil, request_options: {})
        #
        # @param id [String] The phone number to update.
        #
        # @param messaging_product [String] Configure the messaging product for this number:
        #
        # @param messaging_profile_id [String] Configure the messaging profile this phone number is assigned to:
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

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumbers::MessagingListParams} for more details.
        #
        # List phone numbers with messaging settings
        #
        # @overload list(page: nil, request_options: {})
        #
        # @param page [Telnyx::Models::PhoneNumbers::MessagingListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::MessagingListResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::MessagingListParams
        def list(params = {})
          parsed, options = Telnyx::PhoneNumbers::MessagingListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "phone_numbers/messaging",
            query: parsed,
            model: Telnyx::Models::PhoneNumbers::MessagingListResponse,
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
