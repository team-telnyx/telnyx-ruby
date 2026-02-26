# frozen_string_literal: true

module Telnyx
  module Models
    class BulkMessagingSettingsUpdatePhoneNumbers < Telnyx::Internal::Type::BaseModel
      # @!attribute failed
      #   Phone numbers that failed to update.
      #
      #   @return [Array<String>, nil]
      optional :failed, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute pending
      #   Phone numbers pending to be updated.
      #
      #   @return [Array<String>, nil]
      optional :pending, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute success
      #   Phoned numbers updated successfully.
      #
      #   @return [Array<String>, nil]
      optional :success, Telnyx::Internal::Type::ArrayOf[String]

      response_only do
        # @!attribute order_id
        #   Order ID to verify bulk update status.
        #
        #   @return [String, nil]
        optional :order_id, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::BulkMessagingSettingsUpdatePhoneNumbers::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::BulkMessagingSettingsUpdatePhoneNumbers::RecordType }
      end

      # @!method initialize(failed: nil, order_id: nil, pending: nil, record_type: nil, success: nil)
      #   @param failed [Array<String>] Phone numbers that failed to update.
      #
      #   @param order_id [String] Order ID to verify bulk update status.
      #
      #   @param pending [Array<String>] Phone numbers pending to be updated.
      #
      #   @param record_type [Symbol, Telnyx::Models::BulkMessagingSettingsUpdatePhoneNumbers::RecordType] Identifies the type of the resource.
      #
      #   @param success [Array<String>] Phoned numbers updated successfully.

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::BulkMessagingSettingsUpdatePhoneNumbers#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        MESSAGING_NUMBERS_BULK_UPDATE = :messaging_numbers_bulk_update

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
