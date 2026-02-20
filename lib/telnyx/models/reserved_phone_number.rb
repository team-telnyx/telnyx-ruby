# frozen_string_literal: true

module Telnyx
  module Models
    class ReservedPhoneNumber < Telnyx::Internal::Type::BaseModel
      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   An ISO 8901 datetime string denoting when the individual number reservation was
        #   created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute errors
        #   Errors the reservation could happen upon
        #
        #   @return [String, nil]
        optional :errors, String

        # @!attribute expired_at
        #   An ISO 8901 datetime string for when the individual number reservation is going
        #   to expire
        #
        #   @return [Time, nil]
        optional :expired_at, Time

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute status
        #   The status of the phone number's reservation.
        #
        #   @return [Symbol, Telnyx::Models::ReservedPhoneNumber::Status, nil]
        optional :status, enum: -> { Telnyx::ReservedPhoneNumber::Status }

        # @!attribute updated_at
        #   An ISO 8901 datetime string for when the the individual number reservation was
        #   updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, created_at: nil, errors: nil, expired_at: nil, phone_number: nil, record_type: nil, status: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ReservedPhoneNumber} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time] An ISO 8901 datetime string denoting when the individual number reservation was
      #
      #   @param errors [String] Errors the reservation could happen upon
      #
      #   @param expired_at [Time] An ISO 8901 datetime string for when the individual number reservation is going
      #
      #   @param phone_number [String]
      #
      #   @param record_type [String]
      #
      #   @param status [Symbol, Telnyx::Models::ReservedPhoneNumber::Status] The status of the phone number's reservation.
      #
      #   @param updated_at [Time] An ISO 8901 datetime string for when the the individual number reservation was u

      # The status of the phone number's reservation.
      #
      # @see Telnyx::Models::ReservedPhoneNumber#status
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
