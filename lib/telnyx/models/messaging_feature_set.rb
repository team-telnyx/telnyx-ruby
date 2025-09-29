# frozen_string_literal: true

module Telnyx
  module Models
    class MessagingFeatureSet < Telnyx::Internal::Type::BaseModel
      # @!attribute domestic_two_way
      #   Send messages to and receive messages from numbers in the same country.
      #
      #   @return [Boolean]
      required :domestic_two_way, Telnyx::Internal::Type::Boolean

      # @!attribute international_inbound
      #   Receive messages from numbers in other countries.
      #
      #   @return [Boolean]
      required :international_inbound, Telnyx::Internal::Type::Boolean

      # @!attribute international_outbound
      #   Send messages to numbers in other countries.
      #
      #   @return [Boolean]
      required :international_outbound, Telnyx::Internal::Type::Boolean

      # @!method initialize(domestic_two_way:, international_inbound:, international_outbound:)
      #   The set of features available for a specific messaging use case (SMS or MMS).
      #   Features can vary depending on the characteristics the phone number, as well as
      #   its current product configuration.
      #
      #   @param domestic_two_way [Boolean] Send messages to and receive messages from numbers in the same country.
      #
      #   @param international_inbound [Boolean] Receive messages from numbers in other countries.
      #
      #   @param international_outbound [Boolean] Send messages to numbers in other countries.
    end
  end
end
