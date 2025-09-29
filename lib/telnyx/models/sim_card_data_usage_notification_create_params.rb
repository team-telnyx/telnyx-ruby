# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardDataUsageNotifications#create
    class SimCardDataUsageNotificationCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute sim_card_id
      #   The identification UUID of the related SIM card resource.
      #
      #   @return [String]
      required :sim_card_id, String

      # @!attribute threshold
      #   Data usage threshold that will trigger the notification.
      #
      #   @return [Telnyx::Models::SimCardDataUsageNotificationCreateParams::Threshold]
      required :threshold, -> { Telnyx::SimCardDataUsageNotificationCreateParams::Threshold }

      # @!method initialize(sim_card_id:, threshold:, request_options: {})
      #   @param sim_card_id [String] The identification UUID of the related SIM card resource.
      #
      #   @param threshold [Telnyx::Models::SimCardDataUsageNotificationCreateParams::Threshold] Data usage threshold that will trigger the notification.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Threshold < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [String, nil]
        optional :amount, String

        # @!attribute unit
        #
        #   @return [Symbol, Telnyx::Models::SimCardDataUsageNotificationCreateParams::Threshold::Unit, nil]
        optional :unit, enum: -> { Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::Unit }

        # @!method initialize(amount: nil, unit: nil)
        #   Data usage threshold that will trigger the notification.
        #
        #   @param amount [String]
        #   @param unit [Symbol, Telnyx::Models::SimCardDataUsageNotificationCreateParams::Threshold::Unit]

        # @see Telnyx::Models::SimCardDataUsageNotificationCreateParams::Threshold#unit
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
