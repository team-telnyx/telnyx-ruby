# frozen_string_literal: true

module Telnyx
  module Models
    module Actions
      # @see Telnyx::Resources::Actions::Purchase#create
      class PurchaseCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Successfully registered SIM cards.
        #
        #   @return [Array<Telnyx::Models::SimpleSimCard>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SimpleSimCard] }

        # @!attribute errors
        #
        #   @return [Array<Telnyx::Models::Actions::WirelessErrorC5290d5308>, nil]
        optional :errors, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Actions::WirelessErrorC5290d5308] }

        # @!method initialize(data: nil, errors: nil)
        #   @param data [Array<Telnyx::Models::SimpleSimCard>] Successfully registered SIM cards.
        #
        #   @param errors [Array<Telnyx::Models::Actions::WirelessErrorC5290d5308>]
      end
    end
  end
end
