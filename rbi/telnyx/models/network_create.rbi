# typed: strong

module Telnyx
  module Models
    class NetworkCreate < Telnyx::Models::Record
      OrHash =
        T.type_alias { T.any(Telnyx::NetworkCreate, Telnyx::Internal::AnyHash) }

      # A user specified name for the network.
      sig { returns(String) }
      attr_accessor :name

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig do
        params(name: String, record_type: String).returns(T.attached_class)
      end
      def self.new(
        # A user specified name for the network.
        name:,
        # Identifies the type of the resource.
        record_type: nil
      )
      end

      sig { override.returns({ name: String, record_type: String }) }
      def to_hash
      end
    end
  end
end
