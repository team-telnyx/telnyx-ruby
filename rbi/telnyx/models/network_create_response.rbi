# typed: strong

module Telnyx
  module Models
    class NetworkCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NetworkCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Network)) }
      attr_reader :data

      sig { params(data: Telnyx::Network::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::Network::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::Network }) }
      def to_hash
      end
    end
  end
end
