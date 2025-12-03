# frozen_string_literal: true

module Telnyx
  module Resources
    class SimCardGroups
      class Actions
        # This API allows fetching detailed information about a SIM card group action
        # resource to make follow-ups in an existing asynchronous operation.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCardGroups::ActionRetrieveResponse]
        #
        # @see Telnyx::Models::SimCardGroups::ActionRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["sim_card_group_actions/%1$s", id],
            model: Telnyx::Models::SimCardGroups::ActionRetrieveResponse,
            options: params[:request_options]
          )
        end

        # This API allows listing a paginated collection a SIM card group actions. It
        # allows to explore a collection of existing asynchronous operation using specific
        # filters.
        #
        # @overload list(filter_sim_card_group_id: nil, filter_status: nil, filter_type: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param filter_sim_card_group_id [String] A valid SIM card group ID.
        #
        # @param filter_status [Symbol, Telnyx::Models::SimCardGroups::ActionListParams::FilterStatus] Filter by a specific status of the resource's lifecycle.
        #
        # @param filter_type [Symbol, Telnyx::Models::SimCardGroups::ActionListParams::FilterType] Filter by action type.
        #
        # @param page_number [Integer] The page number to load.
        #
        # @param page_size [Integer] The size of the page.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCardGroups::ActionListResponse]
        #
        # @see Telnyx::Models::SimCardGroups::ActionListParams
        def list(params = {})
          parsed, options = Telnyx::SimCardGroups::ActionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "sim_card_group_actions",
            query: parsed.transform_keys(
              filter_sim_card_group_id: "filter[sim_card_group_id]",
              filter_status: "filter[status]",
              filter_type: "filter[type]",
              page_number: "page[number]",
              page_size: "page[size]"
            ),
            model: Telnyx::Models::SimCardGroups::ActionListResponse,
            options: options
          )
        end

        # This action will asynchronously remove an existing Private Wireless Gateway
        # definition from a SIM card group. Completing this operation defines that all SIM
        # cards in the SIM card group will get their traffic handled by Telnyx's default
        # mobile network configuration.
        #
        # @overload remove_private_wireless_gateway(id, request_options: {})
        #
        # @param id [String] Identifies the SIM group.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCardGroups::ActionRemovePrivateWirelessGatewayResponse]
        #
        # @see Telnyx::Models::SimCardGroups::ActionRemovePrivateWirelessGatewayParams
        def remove_private_wireless_gateway(id, params = {})
          @client.request(
            method: :post,
            path: ["sim_card_groups/%1$s/actions/remove_private_wireless_gateway", id],
            model: Telnyx::Models::SimCardGroups::ActionRemovePrivateWirelessGatewayResponse,
            options: params[:request_options]
          )
        end

        # This action will asynchronously remove an existing Wireless Blocklist to all the
        # SIMs in the SIM card group.
        #
        # @overload remove_wireless_blocklist(id, request_options: {})
        #
        # @param id [String] Identifies the SIM group.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCardGroups::ActionRemoveWirelessBlocklistResponse]
        #
        # @see Telnyx::Models::SimCardGroups::ActionRemoveWirelessBlocklistParams
        def remove_wireless_blocklist(id, params = {})
          @client.request(
            method: :post,
            path: ["sim_card_groups/%1$s/actions/remove_wireless_blocklist", id],
            model: Telnyx::Models::SimCardGroups::ActionRemoveWirelessBlocklistResponse,
            options: params[:request_options]
          )
        end

        # This action will asynchronously assign a provisioned Private Wireless Gateway to
        # the SIM card group. Completing this operation defines that all SIM cards in the
        # SIM card group will get their traffic controlled by the associated Private
        # Wireless Gateway. This operation will also imply that new SIM cards assigned to
        # a group will inherit its network definitions. If it's moved to a different group
        # that doesn't have a Private Wireless Gateway, it'll use Telnyx's default mobile
        # network configuration.
        #
        # @overload set_private_wireless_gateway(id, private_wireless_gateway_id:, request_options: {})
        #
        # @param id [String] Identifies the SIM group.
        #
        # @param private_wireless_gateway_id [String] The identification of the related Private Wireless Gateway resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCardGroups::ActionSetPrivateWirelessGatewayResponse]
        #
        # @see Telnyx::Models::SimCardGroups::ActionSetPrivateWirelessGatewayParams
        def set_private_wireless_gateway(id, params)
          parsed, options = Telnyx::SimCardGroups::ActionSetPrivateWirelessGatewayParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["sim_card_groups/%1$s/actions/set_private_wireless_gateway", id],
            body: parsed,
            model: Telnyx::Models::SimCardGroups::ActionSetPrivateWirelessGatewayResponse,
            options: options
          )
        end

        # This action will asynchronously assign a Wireless Blocklist to all the SIMs in
        # the SIM card group.
        #
        # @overload set_wireless_blocklist(id, wireless_blocklist_id:, request_options: {})
        #
        # @param id [String] Identifies the SIM group.
        #
        # @param wireless_blocklist_id [String] The identification of the related Wireless Blocklist resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCardGroups::ActionSetWirelessBlocklistResponse]
        #
        # @see Telnyx::Models::SimCardGroups::ActionSetWirelessBlocklistParams
        def set_wireless_blocklist(id, params)
          parsed, options = Telnyx::SimCardGroups::ActionSetWirelessBlocklistParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["sim_card_groups/%1$s/actions/set_wireless_blocklist", id],
            body: parsed,
            model: Telnyx::Models::SimCardGroups::ActionSetWirelessBlocklistResponse,
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
