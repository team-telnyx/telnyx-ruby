# frozen_string_literal: true

module Telnyx
  module Resources
    class ExternalConnections
      class PhoneNumbers
        # Return the details of a phone number associated with the given external
        # connection.
        #
        # @overload retrieve(phone_number_id, id:, request_options: {})
        #
        # @param phone_number_id [String] A phone number's ID via the Telnyx API
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::PhoneNumberRetrieveResponse]
        #
        # @see Telnyx::Models::ExternalConnections::PhoneNumberRetrieveParams
        def retrieve(phone_number_id, params)
          parsed, options = Telnyx::ExternalConnections::PhoneNumberRetrieveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["external_connections/%1$s/phone_numbers/%2$s", id, phone_number_id],
            model: Telnyx::Models::ExternalConnections::PhoneNumberRetrieveResponse,
            options: options
          )
        end

        # Asynchronously update settings of the phone number associated with the given
        # external connection.
        #
        # @overload update(phone_number_id, id:, location_id: nil, request_options: {})
        #
        # @param phone_number_id [String] Path param: A phone number's ID via the Telnyx API
        #
        # @param id [String] Path param: Identifies the resource.
        #
        # @param location_id [String] Body param: Identifies the location to assign the phone number to.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::PhoneNumberUpdateResponse]
        #
        # @see Telnyx::Models::ExternalConnections::PhoneNumberUpdateParams
        def update(phone_number_id, params)
          parsed, options = Telnyx::ExternalConnections::PhoneNumberUpdateParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["external_connections/%1$s/phone_numbers/%2$s", id, phone_number_id],
            body: parsed,
            model: Telnyx::Models::ExternalConnections::PhoneNumberUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::ExternalConnections::PhoneNumberListParams} for more details.
        #
        # Returns a list of all active phone numbers associated with the given external
        # connection.
        #
        # @overload list(id, filter: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param filter [Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter] Filter parameter for phone numbers (deepObject style). Supports filtering by pho
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::ExternalConnections::ExternalConnectionPhoneNumber>]
        #
        # @see Telnyx::Models::ExternalConnections::PhoneNumberListParams
        def list(id, params = {})
          parsed, options = Telnyx::ExternalConnections::PhoneNumberListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["external_connections/%1$s/phone_numbers", id],
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::ExternalConnections::ExternalConnectionPhoneNumber,
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
