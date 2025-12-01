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
        returns(
          T.nilable(
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        )
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
            T.nilable(
              Telnyx::PortingOrderActivationSettings::ActivationStatus::OrSymbol
            ),
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
              T.nilable(
                Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
              ),
            fast_port_eligible: T::Boolean,
            foc_datetime_actual: T.nilable(Time),
            foc_datetime_requested: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      # Activation status
      module ActivationStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::PortingOrderActivationSettings::ActivationStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NEW =
          T.let(
            :New,
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :Pending,
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        CONFLICT =
          T.let(
            :Conflict,
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        CANCEL_PENDING =
          T.let(
            :"Cancel Pending",
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :Failed,
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        CONCURRED =
          T.let(
            :Concurred,
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        ACTIVATE_RDY =
          T.let(
            :"Activate RDY",
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        DISCONNECT_PENDING =
          T.let(
            :"Disconnect Pending",
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        CONCURRENCE_SENT =
          T.let(
            :"Concurrence Sent",
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        OLD =
          T.let(
            :Old,
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        SENDING =
          T.let(
            :Sending,
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :Active,
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :Cancelled,
            Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PortingOrderActivationSettings::ActivationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
