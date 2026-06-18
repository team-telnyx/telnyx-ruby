# typed: strong

module Telnyx
  module Models
    class PortingOrderActivationSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PortingOrderActivationSettings,
            Telnyx::Internal::AnyHash
          )
        end

      # Activation status
      sig do
        returns(T.nilable(Telnyx::PortingOrderActivationStatus::TaggedSymbol))
      end
      attr_accessor :activation_status

      # ISO 8601 formatted Date/Time of the FOC date
      sig { returns(T.nilable(Time)) }
      attr_accessor :foc_datetime_actual

      # ISO 8601 formatted Date/Time requested for the FOC date
      sig { returns(T.nilable(Time)) }
      attr_accessor :foc_datetime_requested

      # Indicates whether this porting order is eligible for FastPort
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :fast_port_eligible

      sig { params(fast_port_eligible: T::Boolean).void }
      attr_writer :fast_port_eligible

      sig do
        params(
          activation_status:
            T.nilable(Telnyx::PortingOrderActivationStatus::OrSymbol),
          fast_port_eligible: T::Boolean,
          foc_datetime_actual: T.nilable(Time),
          foc_datetime_requested: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # Activation status
        activation_status: nil,
        # Indicates whether this porting order is eligible for FastPort
        fast_port_eligible: nil,
        # ISO 8601 formatted Date/Time of the FOC date
        foc_datetime_actual: nil,
        # ISO 8601 formatted Date/Time requested for the FOC date
        foc_datetime_requested: nil
      )
      end

      sig do
        override.returns(
          {
            activation_status:
              T.nilable(Telnyx::PortingOrderActivationStatus::TaggedSymbol),
            fast_port_eligible: T::Boolean,
            foc_datetime_actual: T.nilable(Time),
            foc_datetime_requested: T.nilable(Time)
          }
        )
      end
      def to_hash
      end
    end
  end
end
