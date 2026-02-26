# frozen_string_literal: true

module Telnyx
  module Models
    module Actions
      # @see Telnyx::Resources::Actions::Register#create
      class RegisterCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Successfully registered SIM cards.
        #
        #   @return [Array<Telnyx::Models::SimpleSimCard>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SimpleSimCard] }

        # @!attribute errors
        #
        #   @return [Array<Telnyx::Models::WirelessError>, nil]
        optional :errors, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WirelessError] }

        # @!method initialize(data: nil, errors: nil)
        #   @param data [Array<Telnyx::Models::SimpleSimCard>] Successfully registered SIM cards.
        #
        #   @param errors [Array<Telnyx::Models::WirelessError>]
      end
    end
  end
end
