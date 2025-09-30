# typed: strong

module Telnyx
  module Models
    class NumberBlockOrderRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NumberBlockOrderRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::NumberBlockOrder)) }
      attr_reader :data

      sig { params(data: Telnyx::NumberBlockOrder::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::NumberBlockOrder::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::NumberBlockOrder }) }
      def to_hash
      end
    end
  end
end
