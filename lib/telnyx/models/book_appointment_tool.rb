# frozen_string_literal: true

module Telnyx
  module Models
    class BookAppointmentTool < Telnyx::Internal::Type::BaseModel
      # @!attribute book_appointment
      #
      #   @return [Telnyx::Models::BookAppointmentToolParams]
      required :book_appointment, -> { Telnyx::BookAppointmentToolParams }

      # @!attribute type
      #
      #   @return [Symbol, Telnyx::Models::BookAppointmentTool::Type]
      required :type, enum: -> { Telnyx::BookAppointmentTool::Type }

      # @!method initialize(book_appointment:, type:)
      #   @param book_appointment [Telnyx::Models::BookAppointmentToolParams]
      #   @param type [Symbol, Telnyx::Models::BookAppointmentTool::Type]

      # @see Telnyx::Models::BookAppointmentTool#type
      module Type
        extend Telnyx::Internal::Type::Enum

        BOOK_APPOINTMENT = :book_appointment

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
