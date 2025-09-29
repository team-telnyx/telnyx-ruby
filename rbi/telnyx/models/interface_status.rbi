# typed: strong

module Telnyx
  module Models
    # The current status of the interface deployment.
    module InterfaceStatus
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::InterfaceStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CREATED = T.let(:created, Telnyx::InterfaceStatus::TaggedSymbol)
      PROVISIONING = T.let(:provisioning, Telnyx::InterfaceStatus::TaggedSymbol)
      PROVISIONED = T.let(:provisioned, Telnyx::InterfaceStatus::TaggedSymbol)
      DELETING = T.let(:deleting, Telnyx::InterfaceStatus::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::InterfaceStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
