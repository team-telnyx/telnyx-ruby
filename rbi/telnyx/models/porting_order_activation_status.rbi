# typed: strong

module Telnyx
  module Models
    # Activation status
    module PortingOrderActivationStatus
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Telnyx::PortingOrderActivationStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      NEW = T.let(:New, Telnyx::PortingOrderActivationStatus::TaggedSymbol)
      PENDING =
        T.let(:Pending, Telnyx::PortingOrderActivationStatus::TaggedSymbol)
      CONFLICT =
        T.let(:Conflict, Telnyx::PortingOrderActivationStatus::TaggedSymbol)
      CANCEL_PENDING =
        T.let(
          :"Cancel Pending",
          Telnyx::PortingOrderActivationStatus::TaggedSymbol
        )
      FAILED =
        T.let(:Failed, Telnyx::PortingOrderActivationStatus::TaggedSymbol)
      CONCURRED =
        T.let(:Concurred, Telnyx::PortingOrderActivationStatus::TaggedSymbol)
      ACTIVATE_RDY =
        T.let(
          :"Activate RDY",
          Telnyx::PortingOrderActivationStatus::TaggedSymbol
        )
      DISCONNECT_PENDING =
        T.let(
          :"Disconnect Pending",
          Telnyx::PortingOrderActivationStatus::TaggedSymbol
        )
      CONCURRENCE_SENT =
        T.let(
          :"Concurrence Sent",
          Telnyx::PortingOrderActivationStatus::TaggedSymbol
        )
      OLD = T.let(:Old, Telnyx::PortingOrderActivationStatus::TaggedSymbol)
      SENDING =
        T.let(:Sending, Telnyx::PortingOrderActivationStatus::TaggedSymbol)
      ACTIVE =
        T.let(:Active, Telnyx::PortingOrderActivationStatus::TaggedSymbol)
      CANCELLED =
        T.let(:Cancelled, Telnyx::PortingOrderActivationStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Telnyx::PortingOrderActivationStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
