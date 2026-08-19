# typed: strong

module Telnyx
  module Resources
    # SIM Card Orders operations
    class SimCardOrderPreview
      # Previews a SIM card order purchase, returning estimated costs and details before
      # you place the order. The preview is processed asynchronously.
      sig do
        params(
          address_id: String,
          quantity: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardOrderPreviewPreviewResponse)
      end
      def preview(
        # Uniquely identifies the address for the order.
        address_id:,
        # The amount of SIM cards that the user would like to purchase in the SIM card
        # order.
        quantity:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
