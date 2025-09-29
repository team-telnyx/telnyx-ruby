# typed: strong

module Telnyx
  module Models
    class WirelessBlocklistRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WirelessBlocklistRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::WirelessBlocklist)) }
      attr_reader :data

      sig { params(data: Telnyx::WirelessBlocklist::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::WirelessBlocklist::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::WirelessBlocklist }) }
      def to_hash
      end
    end
  end
end
