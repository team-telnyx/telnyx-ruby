# frozen_string_literal: true

module Telnyx
  module Models
    class NumberHealthMetrics < Telnyx::Internal::Type::BaseModel
      # @!attribute inbound_outbound_ratio
      #   The ratio of messages received to the number of messages sent.
      #
      #   @return [Float]
      required :inbound_outbound_ratio, Float

      # @!attribute message_count
      #   The number of messages analyzed for the health metrics.
      #
      #   @return [Integer]
      required :message_count, Integer

      # @!attribute spam_ratio
      #   The ratio of messages blocked for spam to the number of messages attempted.
      #
      #   @return [Float]
      required :spam_ratio, Float

      # @!attribute success_ratio
      #   The ratio of messages sucessfully delivered to the number of messages attempted.
      #
      #   @return [Float]
      required :success_ratio, Float

      # @!method initialize(inbound_outbound_ratio:, message_count:, spam_ratio:, success_ratio:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NumberHealthMetrics} for more details.
      #
      #   High level health metrics about the number and it's messaging sending patterns.
      #
      #   @param inbound_outbound_ratio [Float] The ratio of messages received to the number of messages sent.
      #
      #   @param message_count [Integer] The number of messages analyzed for the health metrics.
      #
      #   @param spam_ratio [Float] The ratio of messages blocked for spam to the number of messages attempted.
      #
      #   @param success_ratio [Float] The ratio of messages sucessfully delivered to the number of messages attempted.
    end
  end
end
