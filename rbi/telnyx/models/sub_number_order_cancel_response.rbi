# typed: strong

module Telnyx
  module Models
    class SubNumberOrderCancelResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SubNumberOrderCancelResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::SubNumberOrder)) }
      attr_reader :data

      sig { params(data: Telnyx::SubNumberOrder::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::SubNumberOrder::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::SubNumberOrder }) }
      def to_hash
      end
    end
  end
end
