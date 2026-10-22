# typed: strong

module Telnyx
  module Models
    class TailscaleSubnetRouterUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TailscaleSubnetRouterUpdateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::TailscaleSubnetRouter)) }
      attr_reader :data

      sig { params(data: Telnyx::TailscaleSubnetRouter::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::TailscaleSubnetRouter::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::TailscaleSubnetRouter }) }
      def to_hash
      end
    end
  end
end
