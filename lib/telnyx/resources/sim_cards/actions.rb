# frozen_string_literal: true

module Telnyx
  module Resources
    class SimCards
      class Actions
        # This API fetches detailed information about a SIM card action to follow-up on an
        # existing asynchronous operation.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCards::ActionRetrieveResponse]
        #
        # @see Telnyx::Models::SimCards::ActionRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["sim_card_actions/%1$s", id],
            model: Telnyx::Models::SimCards::ActionRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::SimCards::ActionListParams} for more details.
        #
        # This API lists a paginated collection of SIM card actions. It enables exploring
        # a collection of existing asynchronous operations using specific filters.
        #
        # @overload list(filter: nil, page: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::SimCards::ActionListParams::Filter] Consolidated filter parameter for SIM card actions (deepObject style). Originall
        #
        # @param page [Telnyx::Models::SimCards::ActionListParams::Page] Consolidated pagination parameter (deepObject style). Originally: page[number],
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCards::ActionListResponse]
        #
        # @see Telnyx::Models::SimCards::ActionListParams
        def list(params = {})
          parsed, options = Telnyx::SimCards::ActionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "sim_card_actions",
            query: parsed,
            model: Telnyx::Models::SimCards::ActionListResponse,
            options: options
          )
        end

        # This API triggers an asynchronous operation to set a public IP for each of the
        # specified SIM cards.<br/> For each SIM Card a SIM Card Action will be generated.
        # The status of the SIM Card Action can be followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api/wireless/list-sim-card-actions)
        # API.
        #
        # @overload bulk_set_public_ips(sim_card_ids:, request_options: {})
        #
        # @param sim_card_ids [Array<String>]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse]
        #
        # @see Telnyx::Models::SimCards::ActionBulkSetPublicIPsParams
        def bulk_set_public_ips(params)
          parsed, options = Telnyx::SimCards::ActionBulkSetPublicIPsParams.dump_request(params)
          @client.request(
            method: :post,
            path: "sim_cards/actions/bulk_set_public_ips",
            body: parsed,
            model: Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse,
            options: options
          )
        end

        # This API disables a SIM card, disconnecting it from the network and making it
        # impossible to consume data.<br/> The API will trigger an asynchronous operation
        # called a SIM Card Action. Transitioning to the disabled state may take a period
        # of time. The status of the SIM Card Action can be followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api/wireless/list-sim-card-actions)
        # API.
        #
        # @overload disable(id, request_options: {})
        #
        # @param id [String] Identifies the SIM.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCards::ActionDisableResponse]
        #
        # @see Telnyx::Models::SimCards::ActionDisableParams
        def disable(id, params = {})
          @client.request(
            method: :post,
            path: ["sim_cards/%1$s/actions/disable", id],
            model: Telnyx::Models::SimCards::ActionDisableResponse,
            options: params[:request_options]
          )
        end

        # This API enables a SIM card, connecting it to the network and making it possible
        # to consume data.<br/> To enable a SIM card, it must be associated with a SIM
        # card group.<br/> The API will trigger an asynchronous operation called a SIM
        # Card Action. Transitioning to the enabled state may take a period of time. The
        # status of the SIM Card Action can be followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api/wireless/list-sim-card-actions)
        # API.
        #
        # @overload enable(id, request_options: {})
        #
        # @param id [String] Identifies the SIM.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCards::ActionEnableResponse]
        #
        # @see Telnyx::Models::SimCards::ActionEnableParams
        def enable(id, params = {})
          @client.request(
            method: :post,
            path: ["sim_cards/%1$s/actions/enable", id],
            model: Telnyx::Models::SimCards::ActionEnableResponse,
            options: params[:request_options]
          )
        end

        # This API removes an existing public IP from a SIM card. <br/><br/> The API will
        # trigger an asynchronous operation called a SIM Card Action. The status of the
        # SIM Card Action can be followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api/wireless/list-sim-card-actions)
        # API.
        #
        # @overload remove_public_ip(id, request_options: {})
        #
        # @param id [String] Identifies the SIM.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCards::ActionRemovePublicIPResponse]
        #
        # @see Telnyx::Models::SimCards::ActionRemovePublicIPParams
        def remove_public_ip(id, params = {})
          @client.request(
            method: :post,
            path: ["sim_cards/%1$s/actions/remove_public_ip", id],
            model: Telnyx::Models::SimCards::ActionRemovePublicIPResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::SimCards::ActionSetPublicIPParams} for more details.
        #
        # This API makes a SIM card reachable on the public internet by mapping a random
        # public IP to the SIM card. <br/><br/> The API will trigger an asynchronous
        # operation called a SIM Card Action. The status of the SIM Card Action can be
        # followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api/wireless/list-sim-card-actions)
        # API. <br/><br/> Setting a Public IP to a SIM Card incurs a charge and will only
        # succeed if the account has sufficient funds.
        #
        # @overload set_public_ip(id, region_code: nil, request_options: {})
        #
        # @param id [String] Identifies the SIM.
        #
        # @param region_code [String] The code of the region where the public IP should be assigned. A list of availab
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCards::ActionSetPublicIPResponse]
        #
        # @see Telnyx::Models::SimCards::ActionSetPublicIPParams
        def set_public_ip(id, params = {})
          parsed, options = Telnyx::SimCards::ActionSetPublicIPParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["sim_cards/%1$s/actions/set_public_ip", id],
            query: parsed,
            model: Telnyx::Models::SimCards::ActionSetPublicIPResponse,
            options: options
          )
        end

        # The SIM card will be able to connect to the network once the process to set it
        # to standby has been completed, thus making it possible to consume data.<br/> To
        # set a SIM card to standby, it must be associated with SIM card group.<br/> The
        # API will trigger an asynchronous operation called a SIM Card Action.
        # Transitioning to the standby state may take a period of time. The status of the
        # SIM Card Action can be followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api/wireless/list-sim-card-actions)
        # API.
        #
        # @overload set_standby(id, request_options: {})
        #
        # @param id [String] Identifies the SIM.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCards::ActionSetStandbyResponse]
        #
        # @see Telnyx::Models::SimCards::ActionSetStandbyParams
        def set_standby(id, params = {})
          @client.request(
            method: :post,
            path: ["sim_cards/%1$s/actions/set_standby", id],
            model: Telnyx::Models::SimCards::ActionSetStandbyResponse,
            options: params[:request_options]
          )
        end

        # It validates whether SIM card registration codes are valid or not.
        #
        # @overload validate_registration_codes(registration_codes: nil, request_options: {})
        #
        # @param registration_codes [Array<String>]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse]
        #
        # @see Telnyx::Models::SimCards::ActionValidateRegistrationCodesParams
        def validate_registration_codes(params = {})
          parsed, options = Telnyx::SimCards::ActionValidateRegistrationCodesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "sim_cards/actions/validate_registration_codes",
            body: parsed,
            model: Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse,
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
