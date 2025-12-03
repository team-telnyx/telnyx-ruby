# frozen_string_literal: true

module Telnyx
  module Resources
    class DynamicEmergencyAddresses
      # Creates a dynamic emergency address.
      #
      # @overload create(administrative_area:, country_code:, house_number:, locality:, postal_code:, street_name:, extended_address: nil, house_suffix: nil, street_post_directional: nil, street_pre_directional: nil, street_suffix: nil, request_options: {})
      #
      # @param administrative_area [String]
      # @param country_code [Symbol, Telnyx::Models::DynamicEmergencyAddress::CountryCode]
      # @param house_number [String]
      # @param locality [String]
      # @param postal_code [String]
      # @param street_name [String]
      # @param extended_address [String]
      # @param house_suffix [String]
      # @param street_post_directional [String]
      # @param street_pre_directional [String]
      # @param street_suffix [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DynamicEmergencyAddressCreateResponse]
      #
      # @see Telnyx::Models::DynamicEmergencyAddressCreateParams
      def create(params)
        parsed, options = Telnyx::DynamicEmergencyAddressCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "dynamic_emergency_addresses",
          body: parsed,
          model: Telnyx::Models::DynamicEmergencyAddressCreateResponse,
          options: options
        )
      end

      # Returns the dynamic emergency address based on the ID provided
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Dynamic Emergency Address id
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DynamicEmergencyAddressRetrieveResponse]
      #
      # @see Telnyx::Models::DynamicEmergencyAddressRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["dynamic_emergency_addresses/%1$s", id],
          model: Telnyx::Models::DynamicEmergencyAddressRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DynamicEmergencyAddressListParams} for more details.
      #
      # Returns the dynamic emergency addresses according to filters
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::DynamicEmergencyAddressListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      # @param page [Telnyx::Models::DynamicEmergencyAddressListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::DynamicEmergencyAddress>]
      #
      # @see Telnyx::Models::DynamicEmergencyAddressListParams
      def list(params = {})
        parsed, options = Telnyx::DynamicEmergencyAddressListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "dynamic_emergency_addresses",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::DynamicEmergencyAddress,
          options: options
        )
      end

      # Deletes the dynamic emergency address based on the ID provided
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Dynamic Emergency Address id
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DynamicEmergencyAddressDeleteResponse]
      #
      # @see Telnyx::Models::DynamicEmergencyAddressDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["dynamic_emergency_addresses/%1$s", id],
          model: Telnyx::Models::DynamicEmergencyAddressDeleteResponse,
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
