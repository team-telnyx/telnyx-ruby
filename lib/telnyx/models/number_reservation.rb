# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberReservations#list
    class NumberReservation < Telnyx::Internal::Type::BaseModel
      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute phone_numbers
      #
      #   @return [Array<Telnyx::Models::ReservedPhoneNumber>, nil]
      optional :phone_numbers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ReservedPhoneNumber] }

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   An ISO 8901 datetime string denoting when the numbers reservation was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute status
        #   The status of the entire reservation.
        #
        #   @return [Symbol, Telnyx::Models::NumberReservation::Status, nil]
        optional :status, enum: -> { Telnyx::NumberReservation::Status }

        # @!attribute updated_at
        #   An ISO 8901 datetime string for when the number reservation was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, created_at: nil, customer_reference: nil, phone_numbers: nil, record_type: nil, status: nil, updated_at: nil)
      #   @param id [String]
      #
      #   @param created_at [Time] An ISO 8901 datetime string denoting when the numbers reservation was created.
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param phone_numbers [Array<Telnyx::Models::ReservedPhoneNumber>]
      #
      #   @param record_type [String]
      #
      #   @param status [Symbol, Telnyx::Models::NumberReservation::Status] The status of the entire reservation.
      #
      #   @param updated_at [Time] An ISO 8901 datetime string for when the number reservation was updated.

      # The status of the entire reservation.
      #
      # @see Telnyx::Models::NumberReservation#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        SUCCESS = :success
        FAILURE = :failure

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
