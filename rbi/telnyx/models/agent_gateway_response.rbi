# typed: strong

module Telnyx
  module Models
    class AgentGatewayResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::AgentGatewayResponse, Telnyx::Internal::AnyHash)
        end

      # An Agent Gateway instance on a WireGuard Interface.
      sig { returns(Telnyx::AgentGateway) }
      attr_reader :data

      sig { params(data: Telnyx::AgentGateway::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::AgentGateway::OrHash).returns(T.attached_class)
      end
      def self.new(
        # An Agent Gateway instance on a WireGuard Interface.
        data:
      )
      end

      sig { override.returns({ data: Telnyx::AgentGateway }) }
      def to_hash
      end
    end
  end
end
