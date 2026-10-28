# typed: strong

module Telnyx
  module Models
    class TunnelRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TunnelRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Tunnel)) }
      attr_reader :data

      sig { params(data: Telnyx::Tunnel::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::Tunnel::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::Tunnel }) }
      def to_hash
      end
    end
  end
end
