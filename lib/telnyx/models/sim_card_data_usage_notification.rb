# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardDataUsageNotifications#list
    class SimCardDataUsageNotification < Telnyx::Internal::Type::BaseModel
      # @!attribute sim_card_id
      #   The identification UUID of the related SIM card resource.
      #
      #   @return [String, nil]
      optional :sim_card_id, String

      # @!attribute threshold
      #   Data usage threshold that will trigger the notification.
      #
      #   @return [Telnyx::Models::SimCardDataUsageNotification::Threshold, nil]
      optional :threshold, -> { Telnyx::SimCardDataUsageNotification::Threshold }

      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #   ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @return [String, nil]
        optional :updated_at, String
      end

      # @!method initialize(id: nil, created_at: nil, record_type: nil, sim_card_id: nil, threshold: nil, updated_at: nil)
      #   The SIM card individual data usage notification information.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param record_type [String]
      #
      #   @param sim_card_id [String] The identification UUID of the related SIM card resource.
      #
      #   @param threshold [Telnyx::Models::SimCardDataUsageNotification::Threshold] Data usage threshold that will trigger the notification.
      #
      #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

      # @see Telnyx::Models::SimCardDataUsageNotification#threshold
      class Threshold < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [String, nil]
        optional :amount, String

        # @!attribute unit
        #
        #   @return [Symbol, Telnyx::Models::SimCardDataUsageNotification::Threshold::Unit, nil]
        optional :unit, enum: -> { Telnyx::SimCardDataUsageNotification::Threshold::Unit }

        # @!method initialize(amount: nil, unit: nil)
        #   Data usage threshold that will trigger the notification.
        #
        #   @param amount [String]
        #   @param unit [Symbol, Telnyx::Models::SimCardDataUsageNotification::Threshold::Unit]

        # @see Telnyx::Models::SimCardDataUsageNotification::Threshold#unit
        module Unit
          extend Telnyx::Internal::Type::Enum

          MB = :MB
          GB = :GB

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
