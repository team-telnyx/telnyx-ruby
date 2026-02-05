# frozen_string_literal: true

module Telnyx
  module Models
    class NumberOrderStatusUpdate < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberOrderStatusUpdate::Data]
      required :data, -> { Telnyx::NumberOrderStatusUpdate::Data }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::NumberOrderStatusUpdate::Meta]
      required :meta, -> { Telnyx::NumberOrderStatusUpdate::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Telnyx::Models::NumberOrderStatusUpdate::Data]
      #   @param meta [Telnyx::Models::NumberOrderStatusUpdate::Meta]

      # @see Telnyx::Models::NumberOrderStatusUpdate#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the event
        #
        #   @return [String]
        required :id, String

        # @!attribute event_type
        #   The type of event being sent
        #
        #   @return [String]
        required :event_type, String

        # @!attribute occurred_at
        #   ISO 8601 timestamp of when the event occurred
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::NumberOrderWithPhoneNumbers]
        required :payload, -> { Telnyx::NumberOrderWithPhoneNumbers }

        # @!attribute record_type
        #   Type of record
        #
        #   @return [String]
        required :record_type, String

        # @!method initialize(id:, event_type:, occurred_at:, payload:, record_type:)
        #   @param id [String] Unique identifier for the event
        #
        #   @param event_type [String] The type of event being sent
        #
        #   @param occurred_at [Time] ISO 8601 timestamp of when the event occurred
        #
        #   @param payload [Telnyx::Models::NumberOrderWithPhoneNumbers]
        #
        #   @param record_type [String] Type of record
      end

      # @see Telnyx::Models::NumberOrderStatusUpdate#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute attempt
        #   Webhook delivery attempt number
        #
        #   @return [Integer]
        required :attempt, Integer

        # @!attribute delivered_to
        #   URL where the webhook was delivered
        #
        #   @return [String]
        required :delivered_to, String

        # @!method initialize(attempt:, delivered_to:)
        #   @param attempt [Integer] Webhook delivery attempt number
        #
        #   @param delivered_to [String] URL where the webhook was delivered
      end
    end
  end
end
