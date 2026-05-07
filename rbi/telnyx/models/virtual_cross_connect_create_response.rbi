# typed: strong

module Telnyx
  module Models
    class VirtualCrossConnectCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VirtualCrossConnectCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::VirtualCrossConnectCombined)) }
      attr_reader :data

      sig { params(data: Telnyx::VirtualCrossConnectCombined::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::VirtualCrossConnectCombined::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::VirtualCrossConnectCombined }) }
      def to_hash
      end
    end
  end
end
