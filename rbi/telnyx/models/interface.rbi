# typed: strong

module Telnyx
  module Models
    class Interface < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Interface, Telnyx::Internal::AnyHash) }

      # A user specified name for the interface.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The id of the network associated with the interface.
      sig { returns(T.nilable(String)) }
      attr_reader :network_id

      sig { params(network_id: String).void }
      attr_writer :network_id

      # The current status of the interface deployment.
      sig { returns(T.nilable(Telnyx::InterfaceStatus::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::InterfaceStatus::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          name: String,
          network_id: String,
          status: Telnyx::InterfaceStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A user specified name for the interface.
        name: nil,
        # The id of the network associated with the interface.
        network_id: nil,
        # The current status of the interface deployment.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            network_id: String,
            status: Telnyx::InterfaceStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
