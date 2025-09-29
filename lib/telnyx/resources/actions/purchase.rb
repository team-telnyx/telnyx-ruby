# frozen_string_literal: true

module Telnyx
  module Resources
    class Actions
      class Purchase
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Actions::PurchaseCreateParams} for more details.
        #
        # Purchases and registers the specified amount of eSIMs to the current user's
        # account.<br/><br/> If <code>sim_card_group_id</code> is provided, the eSIMs will
        # be associated with that group. Otherwise, the default group for the current user
        # will be used.<br/><br/>
        #
        # @overload create(amount:, product: nil, sim_card_group_id: nil, status: nil, tags: nil, whitelabel_name: nil, request_options: {})
        #
        # @param amount [Integer] The amount of eSIMs to be purchased.
        #
        # @param product [String] Type of product to be purchased, specify "whitelabel" to use a custom SPN
        #
        # @param sim_card_group_id [String] The group SIMCardGroup identification. This attribute can be <code>null</code> w
        #
        # @param status [Symbol, Telnyx::Models::Actions::PurchaseCreateParams::Status] Status on which the SIM cards will be set after being successfully registered.
        #
        # @param tags [Array<String>] Searchable tags associated with the SIM cards
        #
        # @param whitelabel_name [String] Service Provider Name (SPN) for the Whitelabel eSIM product. It will be displaye
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Actions::PurchaseCreateResponse]
        #
        # @see Telnyx::Models::Actions::PurchaseCreateParams
        def create(params)
          parsed, options = Telnyx::Actions::PurchaseCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "actions/purchase/esims",
            body: parsed,
            model: Telnyx::Models::Actions::PurchaseCreateResponse,
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
