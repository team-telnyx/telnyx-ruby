# frozen_string_literal: true

module Telnyx
  module Resources
    class UserAddresses
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::UserAddressCreateParams} for more details.
      #
      # Creates a user address.
      #
      # @overload create(business_name:, country_code:, first_name:, last_name:, locality:, street_address:, administrative_area: nil, borough: nil, customer_reference: nil, extended_address: nil, neighborhood: nil, phone_number: nil, postal_code: nil, skip_address_verification: nil, request_options: {})
      #
      # @param business_name [String] The business name associated with the user address.
      #
      # @param country_code [String] The two-character (ISO 3166-1 alpha-2) country code of the user address.
      #
      # @param first_name [String] The first name associated with the user address.
      #
      # @param last_name [String] The last name associated with the user address.
      #
      # @param locality [String] The locality of the user address. For US addresses, this corresponds to the city
      #
      # @param street_address [String] The primary street address information about the user address.
      #
      # @param administrative_area [String] The locality of the user address. For US addresses, this corresponds to the stat
      #
      # @param borough [String] The borough of the user address. This field is not used for addresses in the US
      #
      # @param customer_reference [String] A customer reference string for customer look ups.
      #
      # @param extended_address [String] Additional street address information about the user address such as, but not li
      #
      # @param neighborhood [String] The neighborhood of the user address. This field is not used for addresses in th
      #
      # @param phone_number [String] The phone number associated with the user address.
      #
      # @param postal_code [String] The postal code of the user address.
      #
      # @param skip_address_verification [String] An optional boolean value specifying if verification of the address should be sk
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::UserAddressCreateResponse]
      #
      # @see Telnyx::Models::UserAddressCreateParams
      def create(params)
        parsed, options = Telnyx::UserAddressCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "user_addresses",
          body: parsed,
          model: Telnyx::Models::UserAddressCreateResponse,
          options: options
        )
      end

      # Retrieves the details of an existing user address.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] user address ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::UserAddressRetrieveResponse]
      #
      # @see Telnyx::Models::UserAddressRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["user_addresses/%1$s", id],
          model: Telnyx::Models::UserAddressRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::UserAddressListParams} for more details.
      #
      # Returns a list of your user addresses.
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::UserAddressListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[customer_re
      #
      # @param page [Telnyx::Models::UserAddressListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param sort [Symbol, Telnyx::Models::UserAddressListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::UserAddress>]
      #
      # @see Telnyx::Models::UserAddressListParams
      def list(params = {})
        parsed, options = Telnyx::UserAddressListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "user_addresses",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::UserAddress,
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
