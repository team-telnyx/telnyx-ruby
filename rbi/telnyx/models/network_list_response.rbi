# typed: strong

module Telnyx
  module Models
    class NetworkListResponse < Telnyx::Models::Record
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::NetworkListResponse, Telnyx::Internal::AnyHash)
        end

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
