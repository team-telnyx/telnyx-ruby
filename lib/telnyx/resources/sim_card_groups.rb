# frozen_string_literal: true

module Telnyx
  module Resources
    class SimCardGroups
      # @return [Telnyx::Resources::SimCardGroups::Actions]
      attr_reader :actions

      # Creates a new SIM card group object
      #
      # @overload create(name:, data_limit: nil, request_options: {})
      #
      # @param name [String] A user friendly name for the SIM card group.
      #
      # @param data_limit [Telnyx::Models::SimCardGroupCreateParams::DataLimit] Upper limit on the amount of data the SIM cards, within the group, can use.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardGroupCreateResponse]
      #
      # @see Telnyx::Models::SimCardGroupCreateParams
      def create(params)
        parsed, options = Telnyx::SimCardGroupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "sim_card_groups",
          body: parsed,
          model: Telnyx::Models::SimCardGroupCreateResponse,
          options: options
        )
      end

      # Returns the details regarding a specific SIM card group
      #
      # @overload retrieve(id, include_iccids: nil, request_options: {})
      #
      # @param id [String] Identifies the SIM group.
      #
      # @param include_iccids [Boolean] It includes a list of associated ICCIDs.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardGroupRetrieveResponse]
      #
      # @see Telnyx::Models::SimCardGroupRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Telnyx::SimCardGroupRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["sim_card_groups/%1$s", id],
          query: parsed,
          model: Telnyx::Models::SimCardGroupRetrieveResponse,
          options: options
        )
      end

      # Updates a SIM card group
      #
      # @overload update(id, data_limit: nil, name: nil, request_options: {})
      #
      # @param id [String] Identifies the SIM group.
      #
      # @param data_limit [Telnyx::Models::SimCardGroupUpdateParams::DataLimit] Upper limit on the amount of data the SIM cards, within the group, can use.
      #
      # @param name [String] A user friendly name for the SIM card group.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardGroupUpdateResponse]
      #
      # @see Telnyx::Models::SimCardGroupUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::SimCardGroupUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["sim_card_groups/%1$s", id],
          body: parsed,
          model: Telnyx::Models::SimCardGroupUpdateResponse,
          options: options
        )
      end

      # Get all SIM card groups belonging to the user that match the given filters.
      #
      # @overload list(filter_name: nil, filter_private_wireless_gateway_id: nil, filter_wireless_blocklist_id: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter_name [String] A valid SIM card group name.
      #
      # @param filter_private_wireless_gateway_id [String] A Private Wireless Gateway ID associated with the group.
      #
      # @param filter_wireless_blocklist_id [String] A Wireless Blocklist ID associated with the group.
      #
      # @param page_number [Integer] The page number to load.
      #
      # @param page_size [Integer] The size of the page.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardGroupListResponse]
      #
      # @see Telnyx::Models::SimCardGroupListParams
      def list(params = {})
        parsed, options = Telnyx::SimCardGroupListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "sim_card_groups",
          query: parsed.transform_keys(
            filter_name: "filter[name]",
            filter_private_wireless_gateway_id: "filter[private_wireless_gateway_id]",
            filter_wireless_blocklist_id: "filter[wireless_blocklist_id]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          model: Telnyx::Models::SimCardGroupListResponse,
          options: options
        )
      end

      # Permanently deletes a SIM card group
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the SIM group.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardGroupDeleteResponse]
      #
      # @see Telnyx::Models::SimCardGroupDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["sim_card_groups/%1$s", id],
          model: Telnyx::Models::SimCardGroupDeleteResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::SimCardGroups::Actions.new(client: client)
      end
    end
  end
end
