# frozen_string_literal: true

module Telnyx
  module Resources
    class SimCardOrderPreview
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SimCardOrderPreviewPreviewParams} for more details.
      #
      # Preview SIM card order purchases.
      #
      # @overload preview(address_id:, quantity:, request_options: {})
      #
      # @param address_id [String] Uniquely identifies the address for the order.
      #
      # @param quantity [Integer] The amount of SIM cards that the user would like to purchase in the SIM card ord
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardOrderPreviewPreviewResponse]
      #
      # @see Telnyx::Models::SimCardOrderPreviewPreviewParams
      def preview(params)
        parsed, options = Telnyx::SimCardOrderPreviewPreviewParams.dump_request(params)
        @client.request(
          method: :post,
          path: "sim_card_order_preview",
          body: parsed,
          model: Telnyx::Models::SimCardOrderPreviewPreviewResponse,
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
