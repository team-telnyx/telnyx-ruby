# typed: strong

module Telnyx
  module Models
    class Network < Telnyx::Models::Record
      OrHash =
        T.type_alias { T.any(Telnyx::Network, Telnyx::Internal::AnyHash) }

      # A user specified name for the network.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { params(name: String).returns(T.attached_class) }
      def self.new(
        # A user specified name for the network.
        name: nil
      )
      end

      sig { override.returns({ name: String }) }
      def to_hash
      end
    end
  end
end
