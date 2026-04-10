# frozen_string_literal: true

module Telnyx
  module Models
    class CheckAvailabilityTool < Telnyx::Internal::Type::BaseModel
      # @!attribute check_availability
      #
      #   @return [Telnyx::Models::CheckAvailabilityToolParams]
      required :check_availability, -> { Telnyx::CheckAvailabilityToolParams }

      # @!attribute type
      #
      #   @return [Symbol, Telnyx::Models::CheckAvailabilityTool::Type]
      required :type, enum: -> { Telnyx::CheckAvailabilityTool::Type }

      # @!method initialize(check_availability:, type:)
      #   @param check_availability [Telnyx::Models::CheckAvailabilityToolParams]
      #   @param type [Symbol, Telnyx::Models::CheckAvailabilityTool::Type]

      # @see Telnyx::Models::CheckAvailabilityTool#type
      module Type
        extend Telnyx::Internal::Type::Enum

        CHECK_AVAILABILITY = :check_availability

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
