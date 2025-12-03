# frozen_string_literal: true

module Telnyx
  module Resources
    class SimCards
      # @return [Telnyx::Resources::SimCards::Actions]
      attr_reader :actions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SimCardRetrieveParams} for more details.
      #
      # Returns the details regarding a specific SIM card.
      #
      # @overload retrieve(id, include_pin_puk_codes: nil, include_sim_card_group: nil, request_options: {})
      #
      # @param id [String] Identifies the SIM.
      #
      # @param include_pin_puk_codes [Boolean] When set to true, includes the PIN and PUK codes in the response. These codes ar
      #
      # @param include_sim_card_group [Boolean] It includes the associated SIM card group object in the response when present.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardRetrieveResponse]
      #
      # @see Telnyx::Models::SimCardRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Telnyx::SimCardRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["sim_cards/%1$s", id],
          query: parsed,
          model: Telnyx::Models::SimCardRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SimCardUpdateParams} for more details.
      #
      # Updates SIM card data
      #
      # @overload update(sim_card_id, authorized_imeis: nil, data_limit: nil, sim_card_group_id: nil, status: nil, tags: nil, request_options: {})
      #
      # @param sim_card_id [String] Identifies the SIM.
      #
      # @param authorized_imeis [Array<String>, nil] List of IMEIs authorized to use a given SIM card.
      #
      # @param data_limit [Telnyx::Models::SimCard::DataLimit] The SIM card individual data limit configuration.
      #
      # @param sim_card_group_id [String] The group SIMCardGroup identification. This attribute can be <code>null</code> w
      #
      # @param status [Telnyx::Models::SimCardStatus]
      #
      # @param tags [Array<String>] Searchable tags associated with the SIM card
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardUpdateResponse]
      #
      # @see Telnyx::Models::SimCardUpdateParams
      def update(sim_card_id, params = {})
        parsed, options = Telnyx::SimCardUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["sim_cards/%1$s", sim_card_id],
          body: parsed,
          model: Telnyx::Models::SimCardUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SimCardListParams} for more details.
      #
      # Get all SIM cards belonging to the user that match the given filters.
      #
      # @overload list(filter: nil, filter_sim_card_group_id: nil, include_sim_card_group: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::SimCardListParams::Filter] Consolidated filter parameter for SIM cards (deepObject style). Originally: filt
      #
      # @param filter_sim_card_group_id [String] A valid SIM card group ID.
      #
      # @param include_sim_card_group [Boolean] It includes the associated SIM card group object in the response when present.
      #
      # @param page [Telnyx::Models::SimCardListParams::Page] Consolidated pagination parameter (deepObject style). Originally: page[number],
      #
      # @param sort [Symbol, Telnyx::Models::SimCardListParams::Sort] Sorts SIM cards by the given field. Defaults to ascending order unless field is
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::SimpleSimCard>]
      #
      # @see Telnyx::Models::SimCardListParams
      def list(params = {})
        parsed, options = Telnyx::SimCardListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "sim_cards",
          query: parsed.transform_keys(filter_sim_card_group_id: "filter[sim_card_group_id]"),
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::SimpleSimCard,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SimCardDeleteParams} for more details.
      #
      # The SIM card will be decommissioned, removed from your account and you will stop
      # being charged.<br />The SIM card won't be able to connect to the network after
      # the deletion is completed, thus making it impossible to consume data.<br/>
      # Transitioning to the disabled state may take a period of time. Until the
      # transition is completed, the SIM card status will be disabling
      # <code>disabling</code>.<br />In order to re-enable the SIM card, you will need
      # to re-register it.
      #
      # @overload delete(id, report_lost: nil, request_options: {})
      #
      # @param id [String] Identifies the SIM.
      #
      # @param report_lost [Boolean] Enables deletion of disabled eSIMs that can't be uninstalled from a device. This
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardDeleteResponse]
      #
      # @see Telnyx::Models::SimCardDeleteParams
      def delete(id, params = {})
        parsed, options = Telnyx::SimCardDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["sim_cards/%1$s", id],
          query: parsed,
          model: Telnyx::Models::SimCardDeleteResponse,
          options: options
        )
      end

      # It returns the activation code for an eSIM.<br/><br/> This API is only available
      # for eSIMs. If the given SIM is a physical SIM card, or has already been
      # installed, an error will be returned.
      #
      # @overload get_activation_code(id, request_options: {})
      #
      # @param id [String] Identifies the SIM.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardGetActivationCodeResponse]
      #
      # @see Telnyx::Models::SimCardGetActivationCodeParams
      def get_activation_code(id, params = {})
        @client.request(
          method: :get,
          path: ["sim_cards/%1$s/activation_code", id],
          model: Telnyx::Models::SimCardGetActivationCodeResponse,
          options: params[:request_options]
        )
      end

      # It returns the device details where a SIM card is currently being used.
      #
      # @overload get_device_details(id, request_options: {})
      #
      # @param id [String] Identifies the SIM.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardGetDeviceDetailsResponse]
      #
      # @see Telnyx::Models::SimCardGetDeviceDetailsParams
      def get_device_details(id, params = {})
        @client.request(
          method: :get,
          path: ["sim_cards/%1$s/device_details", id],
          model: Telnyx::Models::SimCardGetDeviceDetailsResponse,
          options: params[:request_options]
        )
      end

      # It returns the public IP requested for a SIM card.
      #
      # @overload get_public_ip(id, request_options: {})
      #
      # @param id [String] Identifies the SIM.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardGetPublicIPResponse]
      #
      # @see Telnyx::Models::SimCardGetPublicIPParams
      def get_public_ip(id, params = {})
        @client.request(
          method: :get,
          path: ["sim_cards/%1$s/public_ip", id],
          model: Telnyx::Models::SimCardGetPublicIPResponse,
          options: params[:request_options]
        )
      end

      # This API allows listing a paginated collection of Wireless Connectivity Logs
      # associated with a SIM Card, for troubleshooting purposes.
      #
      # @overload list_wireless_connectivity_logs(id, page_number: nil, page_size: nil, request_options: {})
      #
      # @param id [String] Identifies the SIM.
      #
      # @param page_number [Integer] The page number to load.
      #
      # @param page_size [Integer] The size of the page.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::SimCardListWirelessConnectivityLogsResponse>]
      #
      # @see Telnyx::Models::SimCardListWirelessConnectivityLogsParams
      def list_wireless_connectivity_logs(id, params = {})
        parsed, options = Telnyx::SimCardListWirelessConnectivityLogsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["sim_cards/%1$s/wireless_connectivity_logs", id],
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::SimCardListWirelessConnectivityLogsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::SimCards::Actions.new(client: client)
      end
    end
  end
end
