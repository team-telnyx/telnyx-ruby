# typed: strong

module Telnyx
  module Models
    class NetworkCreate < Telnyx::Models::Network
      OrHash =
        T.type_alias { T.any(Telnyx::NetworkCreate, Telnyx::Internal::AnyHash) }

      sig { returns(T.attached_class) }
      def self.new
      end

      sig { override.returns({}) }
      def to_hash
      end
    end
  end
end
