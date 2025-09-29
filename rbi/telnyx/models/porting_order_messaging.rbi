# typed: strong

module Telnyx
  module Models
    class PortingOrderMessaging < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderMessaging, Telnyx::Internal::AnyHash)
        end

      # Indicates whether Telnyx will port messaging capabilities from the losing
      # carrier. If false, any messaging capabilities will stay with their current
      # provider.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enable_messaging

      sig { params(enable_messaging: T::Boolean).void }
      attr_writer :enable_messaging

      # Indicates whether the porting order can also port messaging capabilities.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :messaging_capable

      sig { params(messaging_capable: T::Boolean).void }
      attr_writer :messaging_capable

      # Indicates whether the messaging porting has been completed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :messaging_port_completed

      sig { params(messaging_port_completed: T::Boolean).void }
      attr_writer :messaging_port_completed

      # The current status of the messaging porting.
      sig do
        returns(
          T.nilable(
            Telnyx::PortingOrderMessaging::MessagingPortStatus::TaggedSymbol
          )
        )
      end
      attr_reader :messaging_port_status

      sig do
        params(
          messaging_port_status:
            Telnyx::PortingOrderMessaging::MessagingPortStatus::OrSymbol
        ).void
      end
      attr_writer :messaging_port_status

      # Information about messaging porting process.
      sig do
        params(
          enable_messaging: T::Boolean,
          messaging_capable: T::Boolean,
          messaging_port_completed: T::Boolean,
          messaging_port_status:
            Telnyx::PortingOrderMessaging::MessagingPortStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Indicates whether Telnyx will port messaging capabilities from the losing
        # carrier. If false, any messaging capabilities will stay with their current
        # provider.
        enable_messaging: nil,
        # Indicates whether the porting order can also port messaging capabilities.
        messaging_capable: nil,
        # Indicates whether the messaging porting has been completed.
        messaging_port_completed: nil,
        # The current status of the messaging porting.
        messaging_port_status: nil
      )
      end

      sig do
        override.returns(
          {
            enable_messaging: T::Boolean,
            messaging_capable: T::Boolean,
            messaging_port_completed: T::Boolean,
            messaging_port_status:
              Telnyx::PortingOrderMessaging::MessagingPortStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The current status of the messaging porting.
      module MessagingPortStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PortingOrderMessaging::MessagingPortStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_APPLICABLE =
          T.let(
            :not_applicable,
            Telnyx::PortingOrderMessaging::MessagingPortStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Telnyx::PortingOrderMessaging::MessagingPortStatus::TaggedSymbol
          )
        ACTIVATING =
          T.let(
            :activating,
            Telnyx::PortingOrderMessaging::MessagingPortStatus::TaggedSymbol
          )
        EXCEPTION =
          T.let(
            :exception,
            Telnyx::PortingOrderMessaging::MessagingPortStatus::TaggedSymbol
          )
        CANCELED =
          T.let(
            :canceled,
            Telnyx::PortingOrderMessaging::MessagingPortStatus::TaggedSymbol
          )
        PARTIAL_PORT_COMPLETE =
          T.let(
            :partial_port_complete,
            Telnyx::PortingOrderMessaging::MessagingPortStatus::TaggedSymbol
          )
        PORTED =
          T.let(
            :ported,
            Telnyx::PortingOrderMessaging::MessagingPortStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PortingOrderMessaging::MessagingPortStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
