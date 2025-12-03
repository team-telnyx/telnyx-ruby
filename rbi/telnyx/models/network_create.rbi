# typed: strong

module Telnyx
  module Models
    class NetworkCreate < Telnyx::Models::Record
      OrHash =
        T.type_alias { T.any(Telnyx::NetworkCreate, Telnyx::Internal::AnyHash) }

      # A user specified name for the network.
      sig { returns(String) }
      attr_accessor :name

      sig { params(name: String).returns(T.attached_class) }
      def self.new(
        # A user specified name for the network.
        name:
      )
      end

      sig { override.returns({ name: String }) }
      def to_hash
      end
    end
  end
end
