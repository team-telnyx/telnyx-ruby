# typed: strong

module Telnyx
  module Models
    class NetworkRouteCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NetworkRouteCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::NetworkRoute)) }
      attr_reader :data

      sig { params(data: Telnyx::NetworkRoute::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::NetworkRoute::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::NetworkRoute }) }
      def to_hash
      end
    end
  end
end
