# typed: strong

module Telnyx
  module Models
    class TunnelCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::TunnelCreateResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::TunnelWithToken)) }
      attr_reader :data

      sig { params(data: Telnyx::TunnelWithToken::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::TunnelWithToken::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::TunnelWithToken }) }
      def to_hash
      end
    end
  end
end
