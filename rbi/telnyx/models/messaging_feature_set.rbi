# typed: strong

module Telnyx
  module Models
    class MessagingFeatureSet < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::MessagingFeatureSet, Telnyx::Internal::AnyHash)
        end

      # Send messages to and receive messages from numbers in the same country.
      sig { returns(T::Boolean) }
      attr_accessor :domestic_two_way

      # Receive messages from numbers in other countries.
      sig { returns(T::Boolean) }
      attr_accessor :international_inbound

      # Send messages to numbers in other countries.
      sig { returns(T::Boolean) }
      attr_accessor :international_outbound

      # The set of features available for a specific messaging use case (SMS or MMS).
      # Features can vary depending on the characteristics the phone number, as well as
      # its current product configuration.
      sig do
        params(
          domestic_two_way: T::Boolean,
          international_inbound: T::Boolean,
          international_outbound: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Send messages to and receive messages from numbers in the same country.
        domestic_two_way:,
        # Receive messages from numbers in other countries.
        international_inbound:,
        # Send messages to numbers in other countries.
        international_outbound:
      )
      end

      sig do
        override.returns(
          {
            domestic_two_way: T::Boolean,
            international_inbound: T::Boolean,
            international_outbound: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
