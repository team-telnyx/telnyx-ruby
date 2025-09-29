# typed: strong

module Telnyx
  module Models
    class SimCardOrderRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SimCardOrderRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::SimCardOrder)) }
      attr_reader :data

      sig { params(data: Telnyx::SimCardOrder::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::SimCardOrder::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::SimCardOrder }) }
      def to_hash
      end
    end
  end
end
