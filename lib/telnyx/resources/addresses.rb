# frozen_string_literal: true

module Telnyx
  module Resources
    class Addresses
      # @return [Telnyx::Resources::Addresses::Actions]
      attr_reader :actions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AddressCreateParams} for more details.
      #
      # Creates an address.
      #
      # @overload create(business_name:, country_code:, first_name:, last_name:, locality:, street_address:, address_book: nil, administrative_area: nil, borough: nil, customer_reference: nil, extended_address: nil, neighborhood: nil, phone_number: nil, postal_code: nil, validate_address: nil, request_options: {})
      #
      # @param business_name [String] The business name associated with the address. An address must have either a fir
      #
      # @param country_code [String] The two-character (ISO 3166-1 alpha-2) country code of the address.
      #
      # @param first_name [String] The first name associated with the address. An address must have either a first
      #
      # @param last_name [String] The last name associated with the address. An address must have either a first l
      #
      # @param locality [String] The locality of the address. For US addresses, this corresponds to the city of t
      #
      # @param street_address [String] The primary street address information about the address.
      #
      # @param address_book [Boolean] Indicates whether or not the address should be considered part of your list of a
      #
      # @param administrative_area [String] The locality of the address. For US addresses, this corresponds to the state of
      #
      # @param borough [String] The borough of the address. This field is not used for addresses in the US but i
      #
      # @param customer_reference [String] A customer reference string for customer look ups.
      #
      # @param extended_address [String] Additional street address information about the address such as, but not limited
      #
      # @param neighborhood [String] The neighborhood of the address. This field is not used for addresses in the US
      #
      # @param phone_number [String] The phone number associated with the address.
      #
      # @param postal_code [String] The postal code of the address.
      #
      # @param validate_address [Boolean] Indicates whether or not the address should be validated for emergency use upon
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AddressCreateResponse]
      #
      # @see Telnyx::Models::AddressCreateParams
      def create(params)
        parsed, options = Telnyx::AddressCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "addresses",
          body: parsed,
          model: Telnyx::Models::AddressCreateResponse,
          options: options
        )
      end

      # Retrieves the details of an existing address.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] address ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AddressRetrieveResponse]
      #
      # @see Telnyx::Models::AddressRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["addresses/%1$s", id],
          model: Telnyx::Models::AddressRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AddressListParams} for more details.
      #
      # Returns a list of your addresses.
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::AddressListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[customer_re
      #
      # @param page [Telnyx::Models::AddressListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param sort [Symbol, Telnyx::Models::AddressListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AddressListResponse]
      #
      # @see Telnyx::Models::AddressListParams
      def list(params = {})
        parsed, options = Telnyx::AddressListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "addresses",
          query: parsed,
          model: Telnyx::Models::AddressListResponse,
          options: options
        )
      end

      # Deletes an existing address.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] address ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AddressDeleteResponse]
      #
      # @see Telnyx::Models::AddressDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["addresses/%1$s", id],
          model: Telnyx::Models::AddressDeleteResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::Addresses::Actions.new(client: client)
      end
    end
  end
end
