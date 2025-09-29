# typed: strong

module Telnyx
  module Models
    class VirtualCrossConnectDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VirtualCrossConnectDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::VirtualCrossConnectDeleteResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::VirtualCrossConnectDeleteResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::VirtualCrossConnectDeleteResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::VirtualCrossConnectDeleteResponse::Data }
        )
      end
      def to_hash
      end
    end
  end
end
