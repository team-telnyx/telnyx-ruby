# typed: strong

module Telnyx
  module Models
    class WireguardInterfaceDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WireguardInterfaceDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::WireguardInterfaceRead)) }
      attr_reader :data

      sig { params(data: Telnyx::WireguardInterfaceRead::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::WireguardInterfaceRead::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::WireguardInterfaceRead }) }
      def to_hash
      end
    end
  end
end
