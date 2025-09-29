# frozen_string_literal: true

module Telnyx
  module Models
    class VerifiedNumber < Telnyx::Internal::Type::BaseModel
      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute record_type
      #   The possible verified numbers record types.
      #
      #   @return [Symbol, Telnyx::Models::VerifiedNumber::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::VerifiedNumber::RecordType }

      # @!attribute verified_at
      #
      #   @return [String, nil]
      optional :verified_at, String

      # @!method initialize(phone_number: nil, record_type: nil, verified_at: nil)
      #   @param phone_number [String]
      #
      #   @param record_type [Symbol, Telnyx::Models::VerifiedNumber::RecordType] The possible verified numbers record types.
      #
      #   @param verified_at [String]

      # The possible verified numbers record types.
      #
      # @see Telnyx::Models::VerifiedNumber#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        VERIFIED_NUMBER = :verified_number

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
