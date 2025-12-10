# typed: strong

module Telnyx
  module Models
    class WireguardPeerRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WireguardPeerRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::WireguardPeerRetrieveResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::WireguardPeerRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::WireguardPeerRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::WireguardPeerRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Models::WireguardPeerPatch
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::WireguardPeerRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end
